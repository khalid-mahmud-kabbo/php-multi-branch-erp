@extends('layouts.app')
@section('title', __('app.branch_update'))

        @section('content')
        <!--start page wrapper -->
        <div class="page-wrapper">
            <div class="page-content">
                <x-breadcrumb :langArray="[
                                            'app.branch',
                                            'app.branch_list',
                                            'app.update',
                                        ]"/>
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="card">
                            <div class="card-header px-4 py-3">
                                <h5 class="mb-0">{{ __('app.branch_update') }}</h5>
                            </div>
                            <div class="card-body p-4">
                                <form class="row g-3 needs-validation" id="branchForm" action="{{ route('branch.update') }}" enctype="multipart/form-data">
                                    {{-- CSRF Protection --}}
                                    @csrf
                                    @method('PUT')

                                    <input type="hidden" name='id' value="{{ $branch->id }}" />
                                    <input type="hidden" id="operation" name="operation" value="update">
                                    <input type="hidden" id="base_url" value="{{ url('/') }}">

                                    <div class="col-md-6">
                                        <x-label for="name" name="{{ __('app.branch_name') }}" />
                                        <x-input type="text" name="name" :required="true" value="{{ $branch->name }}"/>
                                    </div>
                                    <div class="col-md-6">
                                        <x-label for="name" name="{{ __('app.branch_code') }}" />
                                        <x-input type="text" name="code" :required="true" value="{{ $branch->code }}"/>
                                    </div>
                                    <div class="col-md-6">
                                        <x-label for="email" name="{{ __('app.email') }}" />
                                        <x-input type="email" name="email" :required="false" value="{{ $branch->email }}"/>
                                    </div>
                                    <div class="col-md-6">
                                        <x-label for="phone" name="{{ __('app.phone') }}" />
                                        <x-input type="number" name="phone" :required="false" value="{{ $branch->phone }}"/>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <x-label for="phone" name="{{ __('app.address') }}" />
                                        <x-input type="text" name="address" :required="false" value="{{ $branch->address }}"/>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <x-label for="status" name="{{ __('app.status') }}" />
                                        <x-dropdown-status selected="{{ $branch->status }}" dropdownName='status'/>
                                    </div>
                                   
                                    <div class="col-md-12">
                                        <div class="d-md-flex d-grid align-items-center gap-3">
                                            <x-button type="submit" class="primary px-4" text="{{ __('app.submit') }}" />
                                            <x-anchor-tag href="{{ route('dashboard') }}" text="{{ __('app.close') }}" class="btn btn-light px-4" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end row-->
            </div>
        </div>
        @endsection

@section('js')
<script src="{{ versionedAsset('custom/js/branch/branch.js') }}"></script>
@endsection
