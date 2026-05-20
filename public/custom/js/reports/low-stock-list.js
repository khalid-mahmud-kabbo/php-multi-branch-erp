$(function() {
    "use strict";

    const tableId = $('#datatable');
    const datatableForm = $("#datatableForm");

    function loadDatatables(){
        if ($.fn.DataTable.isDataTable(tableId)) {
            tableId.DataTable().destroy();
        }

        var table = tableId.DataTable({
            processing: true,
            serverSide: true,
            method:'get',
            ajax: {
                url: baseURL + '/report/stock/get-low-stock-report/datatable',
                data: {
                    brand_id : $('#brand_id').val(),
                    item_category_id : $('#item_category_id').val(),
                    is_service : $('#is_service').val(),
                    created_by : $('#user_id').val(),
                    warehouse_id : $('#warehouse_id').val(),
                    tracking_type : $('#tracking_type').val(),
                },
            },
            columns: [
                {targets: 0, data:'id', orderable:true, visible:false},
                {
                    data: 'id',
                    orderable: false,
                    className: 'text-center',
                    render: function(data, type, full, meta) {
                        return '<input type="checkbox" class="form-check-input row-select" name="record_ids[]" value="' + data + '">';
                    }
                },
                {data: 'name', name: 'name'},
                {data: 'item_code', name: 'item_code'},
                {data: 'sku', name: 'sku', visible:itemSettings.sku==1?true:false, orderable: false},
                {data: 'brand_name', name: 'brand_name', orderable: false},
                {data: 'category_name', name: 'category_name', orderable: false},
                {data: 'min_stock', name: 'min_stock', className: 'text-end'},
                {data: 'current_stock', name: 'current_stock', className: 'text-end'},
                {data: 'tracking_type', name: 'tracking_type'},
                {data: 'username', name: 'username', orderable: false},
                {data: 'created_at', name: 'created_at'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ],
            dom: "<'row' " +
                    "<'col-sm-12' " +
                        "<'float-start' l" +
                        ">" +
                        "<'float-end' fr" +
                        ">" +
                        "<'float-end ms-2'" +
                            "<'card-body ' B >" +
                        ">" +
                    ">" +
                  ">" +
            "<'row'<'col-sm-12'tr>>" +
            "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
            buttons: [
                {
                    className: 'btn btn-outline-danger buttons-copy buttons-html5 multi_delete',
                    text: 'Delete',
                    action: function ( e, dt, node, config ) {
                        requestDeleteRecords();
                    }
                },
                {
                    extend: 'copyHtml5',
                    exportOptions: {
                        columns: ':visible:not(:first-child):not(:last-child)'
                    }
                },
                {
                    extend: 'excelHtml5',
                    exportOptions: {
                        columns: ':visible:not(:first-child):not(:last-child)'
                    }
                },
                {
                    extend: 'csvHtml5',
                    exportOptions: {
                        columns: ':visible:not(:first-child):not(:last-child)'
                    }
                },
                {
                    extend: 'pdfHtml5',
                    orientation: 'portrait',
                    exportOptions: {
                        columns: ':visible:not(:first-child):not(:last-child)'
                    },
                },
                {
                    text: '<i class="bx bx-refresh"></i>',
                    className: 'btn btn-outline-secondary',
                    action: function ( e, dt, node, config ) {
                        dt.ajax.reload();
                    }
                }
            ],
            select: {
                style: 'os',
                selector: 'td:first-child'
            },
            order: [[0, 'desc']],
            drawCallback: function() {
                setTooltip();
            }
        });

        table.on('click', '.deleteRequest', function () {
            let deleteId = $(this).attr('data-delete-id');
            deleteRequest(deleteId);
        });

        $('.dataTables_length, .dataTables_filter, .dataTables_info, .dataTables_paginate').wrap("<div class='card-body py-3'>");
    }

    tableId.find('thead').on('click', '.row-select', function() {
        var isChecked = $(this).prop('checked');
        tableId.find('tbody .row-select').prop('checked', isChecked);
    });

    async function validateCheckedCheckbox(){
        const confirmed = await confirmAction();
        if (!confirmed) {
            return false;
        }
        if($('input[name="record_ids[]"]:checked').length == 0){
            iziToast.error({title: 'Warning', layout: 2, message: "Please select at least one record to delete"});
            return false;
        }
        return true;
    }

    async function deleteRequest(id) {
        const confirmed = await confirmAction();
        if (confirmed) {
            deleteRecord(id);
        }
    }

    async function requestDeleteRecords(){
        const confirmed = await confirmAction();
        if (confirmed) {
            datatableForm.trigger('submit');
        }
    }

    datatableForm.on("submit", function(e) {
        e.preventDefault();
        const form = $(this);
        const formArray = {
            formId: form.attr("id"),
            csrf: form.find('input[name="_token"]').val(),
            _method: form.find('input[name="_method"]').val(),
            url: form.closest('form').attr('action'),
            formObject : form,
            formData : new FormData(document.getElementById(form.attr("id"))),
        };
        ajaxRequest(formArray);
    });

    function deleteRecord(id){
        const form = datatableForm;
        const formArray = {
            formId: form.attr("id"),
            csrf: form.find('input[name="_token"]').val(),
            _method: form.find('input[name="_method"]').val(),
            url: form.closest('form').attr('action'),
            formObject : form,
            formData: new FormData()
        };
        formArray.formData.append('record_ids[]', id);
        ajaxRequest(formArray);
    }

    function ajaxRequest(formArray){
        var jqxhr = $.ajax({
            type: formArray._method,
            url: formArray.url,
            data: formArray.formData,
            dataType: 'json',
            contentType: false,
            processData: false,
            headers: {
                'X-CSRF-TOKEN': formArray.csrf
            },
        });
        jqxhr.done(function(data) {
            iziToast.success({title: 'Success', layout: 2, message: data.message});
        });
        jqxhr.fail(function(response) {
            var message = response.responseJSON ? response.responseJSON.message : 'Something went wrong';
            iziToast.error({title: 'Error', layout: 2, message: message});
        });
        jqxhr.always(function() {
            if (typeof afterCallAjaxResponse === 'function') {
                afterCallAjaxResponse(formArray.formObject);
            }
        });
    }

    function afterCallAjaxResponse(formObject){
        loadDatatables();
    }

    $(document).ready(function() {
        loadDatatables();
    });

    $(document).on("change", '#brand_id, #item_category_id, #is_service, #user_id, #warehouse_id, #tracking_type', function () {
        loadDatatables();
    });
});

$(document).on('click', '.toggle-btn', function() {
    const targetId = $(this).data('target');
    const span = $('#' + targetId);

    if (span.is(':visible')) {
        span.hide();
        $(this).text('Show');
    } else {
        span.show();
        $(this).text('Hide');
    }
});
