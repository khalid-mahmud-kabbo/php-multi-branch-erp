async function autoTranslateInvoice() {
    const walker = document.createTreeWalker(document.body, NodeFilter.SHOW_TEXT, {
        acceptNode: (node) => {
            const text = node.textContent.trim();
            if (text.length < 2) return NodeFilter.FILTER_REJECT; // skip empty or 1-char
            const parent = node.parentElement.tagName;
            if (['SCRIPT', 'STYLE', 'NOSCRIPT', 'TEXTAREA', 'TITLE'].includes(parent)) return NodeFilter.FILTER_REJECT;

            // Skip if the text is only a number (integer or decimal)
            if (/^\d+(\.\d+)?$/.test(text)) return NodeFilter.FILTER_REJECT;

            return NodeFilter.FILTER_ACCEPT;
        }
    });

    const textNodes = [];
    let n;
    while (n = walker.nextNode()) textNodes.push(n);

    if (textNodes.length === 0) {
        if (typeof PrintNow === "function") PrintNow();
        return;
    }

    const separator = " ||| ";
    const batches = [];
    let currentBatch = [];
    let currentLen = 0;

    for (let node of textNodes) {
        const txt = node.textContent.trim();
        if (currentLen + txt.length > 1800) {
            batches.push(currentBatch.join(separator));
            currentBatch = [];
            currentLen = 0;
        }
        currentBatch.push(txt);
        currentLen += txt.length + separator.length;
    }
    if (currentBatch.length) batches.push(currentBatch.join(separator));

    try {
        const results = await Promise.all(batches.map(async (b) => {
            const r = await fetch(`https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=ar&dt=t&q=${encodeURIComponent(b)}`);
            const json = await r.json();
            return json[0].map(item => item[0]).join('').split(separator);
        }));

        const allTranslations = results.flat();

        textNodes.forEach((node, i) => {
            const trans = allTranslations[i];
            if (trans && trans.trim() !== "") {
                const span = document.createElement('span');
                span.innerHTML = `${node.textContent} <span dir="rtl" style="font-weight:bold; font-size:0.95em;"> (${trans.trim()}) </span>`;
                node.parentNode.replaceChild(span, node);
            }
        });

    } catch (e) {
        console.error("Auto-translation failed:", e);
    } finally {
        window.print();
        if (typeof PrintNow === "function") {
            setTimeout(() => {
                window.print();
            }, 300);
        }
    }
}

window.addEventListener('load', autoTranslateInvoice);