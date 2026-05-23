<select class="form-select single-select-clear-field" id="branch_id" name="branch_id" data-placeholder="Choose one thing">
    <option></option>
    @foreach ($branches as $branch)
        <option value="{{ $branch->id }}" {{ $selected == $branch->id ? 'selected' : '' }}>{{ $branch->name }}</option>
    @endforeach
</select>
