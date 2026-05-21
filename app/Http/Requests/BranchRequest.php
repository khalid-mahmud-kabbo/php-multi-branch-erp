<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class BranchRequest extends FormRequest
{
    /**
     * Indicates if the validator should stop on the first rule failure.
     *
     * @var bool
     */
    protected $stopOnFirstFailure = true;

    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {

        $rulesArray = [
            'name'                              => ['nullable', 'string', 'max:100'],
            'code'                              => ['nullable', 'string', 'max:100'],
            'phone'                                 => ['nullable', 'string', 'max:100'],
            'email'                                  => ['nullable', 'string', 'max:500'],
            'address'                               => ['nullable', 'string', 'max:500'],
            'status'                                => ['required'],
        ];

        if ($this->isMethod('PUT')) {
            $carrierId                     = $this->input('id');
            $rulesArray['id']           = ['required'];
            $rulesArray['name']       = ['required', 'string', 'max:100', Rule::unique('branch')->ignore($carrierId)];
            $rulesArray['code']       = ['nullable', 'string', 'max:20', Rule::unique('branch')->ignore($carrierId)];
            $rulesArray['email']        = ['nullable', 'email', 'max:100', Rule::unique('branch')->ignore($carrierId)];
            $rulesArray['phone']       = ['nullable', 'string', 'max:20', Rule::unique('branch')->ignore($carrierId)];
            $rulesArray['address']     = ['nullable', 'string', 'max:20', Rule::unique('branch')->ignore($carrierId)];
            }else{
            $rulesArray['name']       = ['required', 'string', 'max:100', Rule::unique('branch')];
            $rulesArray['code']       = ['nullable', 'string', 'max:20', Rule::unique('branch')];
            $rulesArray['email']        = ['nullable', 'email', 'email', 'max:255', Rule::unique('branch')];
            $rulesArray['phone']       = ['nullable', 'string', 'max:20', Rule::unique('branch')];
            $rulesArray['address']     = ['nullable', 'string', 'max:20', Rule::unique('branch')];
        }

        return $rulesArray;

    }
    public function messages(): array
    {
        $responseMessages = [
            'name.required'     => 'A Branch Name should not be empty',
            'status.required'   => 'Please Select Status',
        ];

        if ($this->isMethod('PUT')) {
            $responseMessages['id.required']    = 'ID Not found to update record';
        }

        return $responseMessages;
    }
}
