@extends('front.layout.app')

@section('main_content')
    <div class="page-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>{{ $post_detail->post_title }}</h2>
                    <nav class="breadcrumb-container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{ $post_detail->post_title }}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-6">
                    <div class="featured-photo">
                        <img src="{{ asset('uploads/' . $post_detail->post_photo) }}" alt="">
                    </div>
                    <div class="sub">
                        <div class="item">
                            <b><i class="fas fa-user"></i></b>
                            <a href="">{{ $user_data->name }}</a>
                        </div>
                        <div class="item">
                            <b><i class="fas fa-edit"></i></b>
                            <a href="">{{ $post_detail->relationshipSubCategory->sub_category_name }}</a>
                        </div>
                        <div class="item">
                            <b><i class="fas fa-clock"></i></b>
                            @php
                                $time_stamps = strtotime($post_detail->update_at);
                                echo date('d M Y', $time_stamps);
                            @endphp
                        </div>
                        <div class="item">
                            <b><i class="fas fa-eye"></i></b>
                            {{ $post_detail->visitors }}
                        </div>
                    </div>
                    <div class="main-text">
                        {{-- {{ $post_detail->post_detail }} --}}
                        {{-- Menghilangkan tag HTML --}}
                        {!! $post_detail->post_detail !!}
                    </div>
                    <div class="tag-section">
                        <h2>Tags</h2>
                        <div class="tag-section-content">
                            @foreach ($tag_data as $item)
                                <a href=""><span class="badge bg-success">{{ $item->tag_name }}</span></a>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 sidebar-col">
                    <div class="sidebar">
                        <div class="widget">
                            <div class="news">
                                <div class="news-heading">
                                    <h2>Popular News</h2>
                                </div>

                                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                                            data-bs-target="#pills-home" type="button" role="tab"
                                            aria-controls="pills-home" aria-selected="true">Recent News</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                            data-bs-target="#pills-profile" type="button" role="tab"
                                            aria-controls="pills-profile" aria-selected="false">Popular News</button>
                                    </li>
                                </ul>
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                        aria-labelledby="pills-home-tab">
                                        @foreach ($global_recent_news_data as $item)
                                            @if ($loop->iteration > 3)
                                            @break
                                        @endif
                                        <div class="news-item">
                                            <div class="left">
                                                <img src="{{ asset('uploads/' . $item->post_photo) }}" alt="">
                                            </div>
                                            <div class="right">
                                                <div class="category">
                                                    <span
                                                        class="badge bg-success">{{ $item->relationshipSubCategory->sub_category_name }}</span>
                                                </div>
                                                <h2><a
                                                        href="{{ route('news_detail', $item->id) }}">{{ $item->post_title }}</a>
                                                </h2>
                                                <div class="date-user">
                                                    <div class="user">
                                                        @if ($item->author_id == 0)
                                                            @php
                                                                $user_data = \App\Models\Admin::where('id', $item->admin_id)->first();
                                                            @endphp
                                                        @else
                                                        @endif
                                                        <a href="">{{ $user_data->name }}</a>
                                                    </div>
                                                    <div class="date">
                                                        @php
                                                            $time_stamps = strtotime($item->update_at);
                                                            echo date('d M Y', $time_stamps);
                                                        @endphp
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="tab-pane fade" id="pills-profile" role="tabpanel"
                                    aria-labelledby="pills-profile-tab">
                                    @foreach ($global_populer_news_data as $item)
                                        @if ($loop->iteration > 3)
                                        @break
                                    @endif
                                    <div class="news-item">
                                        <div class="left">
                                            <img src="{{ asset('uploads/' . $item->post_photo) }}"
                                                alt="">
                                        </div>
                                        <div class="right">
                                            <div class="category">
                                                <span
                                                    class="badge bg-success">{{ $item->relationshipSubCategory->sub_category_name }}</span>
                                            </div>
                                            <h2><a
                                                    href="{{ route('news_detail', $item->id) }}">{{ $item->post_title }}</a>
                                            </h2>
                                            <div class="date-user">
                                                <div class="user">
                                                    @if ($item->author_id == 0)
                                                        @php
                                                            $user_data = \App\Models\Admin::where('id', $item->admin_id)->first();
                                                        @endphp
                                                    @else
                                                    @endif
                                                    <a href="">{{ $user_data->name }}</a>
                                                </div>
                                                <div class="date">
                                                    @php
                                                        $time_stamps = strtotime($item->update_at);
                                                        echo date('d M Y', $time_stamps);
                                                    @endphp
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
