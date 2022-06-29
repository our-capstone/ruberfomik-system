@extends('front.layout.app')
@section('main_content')
    <div class="page-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Gallery Facilities</h2>
                    <nav class="breadcrumb-container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">About</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="photo-gallery">
                    <div class="row">
                        @foreach ($photos as $item)
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="photo-thumb">
                                    <img src="{{ asset('uploads/' . $item->photo) }}" alt="">
                                    <div class="bg"></div>
                                    <div class="icon">
                                        <a href="{{ asset('uploads/' . $item->photo) }}" class="magnific"><i
                                                class="fas fa-plus"></i></a>
                                    </div>
                                </div>
                                <div class="photo-caption">
                                    <a href="">{{ $item->caption }}</a>
                                </div>
                                <div class="photo-date">
                                    <i class="fas fa-calendar-alt"></i> @php
                                        $time_stamps = strtotime($item->update_at);
                                        echo date('d M Y', $time_stamps);
                                    @endphp
                                </div>
                            </div>
                        @endforeach
                        <div class="col-md-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                </ul>
                            </nav>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
