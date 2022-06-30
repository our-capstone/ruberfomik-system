@extends('front.layout.app')


@section('main_content')
    @if ($setting_data->news_ticker_status == 'Show')
        <div class="news-ticker-item">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="acme-news-ticker">
                            <div class="acme-news-ticker-label">Latest News</div>
                            <div class="acme-news-ticker-box">
                                <ul class="my-news-ticker">
                                    @php $i=0; @endphp
                                    @foreach ($post_data as $item)
                                        @php $i++; @endphp
                                        @if ($i > $setting_data->news_ticker_total)
                                        @break
                                    @endif
                                    <li><a href="{{ route('news_detail', $item->id) }}">{{ $item->post_title }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif;

<div class="home-main">
    <div class="container">
        <div class="row g-2">
            <div class="col-lg-8 col-md-12 left">
                @php $i=0; @endphp
                @foreach ($post_data as $item)
                    @php $i++; @endphp
                    @if ($i > 1)
                    @break
                @endif
                <div class="inner">
                    <div class="photo">
                        <div class="bg"></div>
                        <img src="{{ asset('uploads/' . $item->post_photo) }}" alt="">
                        <div class="text">
                            <div class="text-inner">
                                <div class="category">
                                    <span
                                        class="badge bg-success badge-sm">{{ $item->relationshipSubCategory->sub_category_name }}</span>
                                </div>
                                <h2><a href="{{ route('news_detail', $item->id) }}">{{ $item->post_title }}</a>
                                </h2>
                                <div class="date-user">
                                    <div class="user">
                                        @if ($item->author_id == 0)
                                            @php
                                                $user_data = App\Models\Admin::where('id', $item->admin_id)->first();
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
                    </div>
                </div>
            @endforeach
        </div>
        <div class="col-lg-4 col-md-12">
            @php $i=0; @endphp
            @foreach ($post_data as $item)
                @php $i++; @endphp
                @if ($i == 1)
                    @continue
                @endif
                @if ($i > 3)
                @break
            @endif
            <div class="inner inner-right">
                <div class="photo">
                    <div class="bg"></div>
                    <img src="{{ asset('uploads/' . $item->post_photo) }}" alt="">
                    <div class="text">
                        <div class="text-inner">
                            <div class="category">
                                <span
                                    class="badge bg-success badge-sm">{{ $item->relationshipSubCategory->sub_category_name }}</span>
                            </div>
                            <h2><a href="{{ route('news_detail', $item->id) }}">{{ $item->post_title }}</a>
                            </h2>
                            <div class="date-user">
                                <div class="user">
                                    @if ($item->author_id == 0)
                                        @php
                                            $user_data = App\Models\Admin::where('id', $item->admin_id)->first();
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
                </div>
            </div>
        @endforeach
    </div>
</div>
</div>
</div>

<div class="home-content">
<div class="container">
<div class="row">
    <div class="col-lg-8 col-md-6 left-col">
        <div class="left">
            @foreach ($sub_category_data as $item)
                @if (count($item->relationshipPost) == 0)
                    @continue
                @endif
                <div class="news-total-item">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <h2> {{ $item->sub_category_name }}</h2>
                        </div>
                        <div class="col-md-12">
                            <div class="bar"></div>
                        </div>
                    </div>
                    <div class="row">
                        @foreach ($item->relationshipPost as $single)
                            @if ($loop->iteration == 2)
                            @break
                        @endif
                        <div class="col-lg-6 col-md-12">
                            <div class="left-side">
                                <div class="photo">
                                    <img src="{{ asset('uploads/' . $single->post_photo) }}"
                                        alt="photo">
                                </div>
                                <div class="category">
                                    <span class="badge bg-success">{{ $item->sub_category_name }}</span>
                                </div>
                                <h3><a href="{{ route('news_detail', $single->id) }}">
                                        {{ $single->post_title }}</a></h3>
                                <div class="date-user">
                                    <div class="user">
                                        @if ($single->author_id == 0)
                                            @php
                                                $user_data = App\Models\Admin::where('id', $single->admin_id)->first();
                                            @endphp
                                        @else
                                        @endif
                                        <a href="">{{ $user_data->name }}</a>
                                    </div>
                                    <div class="date">
                                        @php
                                            $time_stamps = strtotime($single->update_at);
                                            echo date('d M Y', $time_stamps);
                                        @endphp
                                    </div>
                                </div>
                                <div class="post-custom">
                                    {!! $single->post_detail !!}
                                </div>
                            </div>
                        </div>
                    @endforeach

                    <div class="col-lg-6 col-md-12">
                        <div class="right-side">
                            @foreach ($item->relationshipPost as $single)
                                @if ($loop->iteration == 1)
                                    @continue
                                @endif
                                @if ($loop->iteration == 6)
                                @break
                            @endif
                            <div class="right-side-item">
                                <div class="left">
                                    <img src="{{ asset('uploads/' . $single->post_photo) }}"
                                        alt="photo">
                                </div>
                                <div class="right">
                                    <div class="category">
                                        <span
                                            class="badge bg-success">{{ $item->sub_category_name }}</span>
                                    </div>
                                    <h2><a href="{{ route('news_detail', $single->id) }}">
                                            {{ $single->post_title }}</a></h2>
                                    <div class="date-user">
                                        <div class="user">
                                            @if ($single->author_id == 0)
                                                @php
                                                    $user_data = App\Models\Admin::where('id', $single->admin_id)->first();
                                                @endphp
                                            @else
                                            @endif
                                            <a href="">{{ $user_data->name }}</a>
                                        </div>
                                        <div class="date">
                                            @php
                                                $time_stamps = strtotime($single->update_at);
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
    @endforeach
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



</div>
</div>
</div>
</div>

<div class="ad-section-3">
<div class="container">
</div>
</div>
@endsection
