<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Post;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $recent_news_data = Post::with('relationshipSubCategory')->orderBy('id', 'desc')->get();
        $populer_news_data = Post::with('relationshipSubCategory')->orderBy('visitors', 'desc')->get();
        view()->share('global_recent_news_data', $recent_news_data);
        view()->share('global_populer_news_data', $populer_news_data);
    }
}