@extends('admin.layout.app')

@section('heading', 'Dashboard')

@section('main_content')
    <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
                <div class="card-icon bg-primary">
                    <i class="fas fa-book-open"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total News Categories</h4>
                    </div>
                    <div class="card-body">
                        {{ $total_category }}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
                <div class="card-icon bg-danger">
                    <i class="fas fa-book-open"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total News</h4>
                    </div>
                    <div class="card-body">
                        {{ $total_news }}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
                <div class="card-icon bg-danger">
                    <i class="fas fa-book-open"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total Sub Category</h4>
                    </div>
                    <div class="card-body">
                        {{ $total_sub_category }}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-6 col-12">
            <div class="card card-statistic-1">
                <div class="card-icon bg-danger">
                    <i class="fas fa-image"></i>
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                        <h4>Total Photo</h4>
                    </div>
                    <div class="card-body">
                        {{ $total_photo }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
