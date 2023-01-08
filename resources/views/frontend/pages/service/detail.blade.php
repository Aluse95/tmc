@extends('frontend.layouts.default')

@php
  $title = $detail->json_params->title->{$locale} ?? $detail->title;
  $brief = $detail->json_params->brief->{$locale} ?? null;
  $content = $detail->json_params->content->{$locale} ?? null;
  $image = $detail->image != '' ? $detail->image : null;
  $image_thumb = $detail->image_thumb != '' ? $detail->image_thumb : null;
  $date = date('H:i d/m/Y', strtotime($detail->created_at));
  
  // For taxonomy
  $taxonomy_json_params = json_decode($detail->taxonomy_json_params);
  $taxonomy_title = $taxonomy_json_params->title->{$locale} ?? $detail->taxonomy_title;
  $image_background = $taxonomy_json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? null);
  $taxonomy_alias = Str::slug($taxonomy_title);
  $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['service'], $taxonomy_alias, $detail->taxonomy_id);
  
  $seo_title = $detail->json_params->seo_title ?? $title;
  $seo_keyword = $detail->json_params->seo_keyword ?? null;
  $seo_description = $detail->json_params->seo_description ?? $brief;
  $seo_image = $image ?? ($image_thumb ?? null);
  
  // schema information
  $datePublished = date('Y-m-d', strtotime($detail->created_at));
  $dateModified = date('Y-m-d', strtotime($detail->updated_at));
@endphp

@push('style')
<style>
  #content-detail {
    /* font-family: 'Asap', sans-serif; */
    text-align: justify;
  }

  #content-detail h2 {
    font-size: 30px;
  }

  #content-detail h3 {
    font-size: 24px;
  }

  #content-detail h4 {
    font-size: 18px;
  }

  #content-detail h5,
  #content-detail h6 {
    font-size: 16px;
  }

  #content-detail p {
    margin-top: 0;
    margin-bottom: 0;
  }

  #content-detail h1,
  #content-detail h2,
  #content-detail h3,
  #content-detail h4,
  #content-detail h5,
  #content-detail h6 {
    margin-top: 0;
    margin-bottom: .5rem;
  }

  #content-detail p+h2,
  #content-detail p+.h2 {
    margin-top: 1rem;
  }

  #content-detail h2+p,
  #content-detail .h2+p {
    margin-top: 1rem;
  }

  #content-detail p+h3,
  #content-detail p+.h3 {
    margin-top: 0.5rem;
  }

  #content-detail h3+p,
  #content-detail .h3+p {
    margin-top: 0.5rem;
  }

  #content-detail ul,
  #content-detail ol {
    list-style: inherit;
    padding: 0 0 0 50px;

  }

  #content-detail ul li {
    display: list-item;
    list-style: initial;
  }

  #content-detail ol li {
    display: list-item;
    list-style: decimal;
  }

  .posts-sm .entry-image {
    width: 75px;
  }

  img {
    max-width: 100%;
    width: auto !important;
  }

  body.light #content-detail p {
    color: #000 !important;
    font-weight: 400 !important;
  }
</style>
@endpush

@section('content')
  {{-- Print all content by [module - route - page] without blocks content at here --}}
  <section class="blog bg-light" id="blog">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="blog-single">
            <div class="post">
              <!-- Post Content -->
              <div class="post-content">
                <div class="post-text px-5 text-justify" id="content-detail">
                  <div class="mb-5">
                    <img style="height: 360px; width:100%" src="{{ $image }}" alt="">
                  </div>
                  {{ $brief }}
                </div>

                <div class="post-footer">
                  <div class="post-share">
                    <h5>Share:</h5>
                    <ul class="list-unstyled social-media">
                      <li><a href="https://www.instagram.com/cws/share?url={{ Request::fullUrl() }}" class="instagram"><i
                            class="fa fa-instagram"></i></a></li>
                      <li><a href="https://twitter.com/intent/tweet?url={{ Request::fullUrl() }}" class="twitter"><i
                            class="fa fa-twitter"></i></a></li>
                      <li><a href="http://www.facebook.com/sharer/sharer.php?u={{ Request::fullUrl() }}"><i
                            class="fa fa-facebook"></i></a></li>
                    </ul>
                  </div>
                </div>

              </div>
            </div>
          </div>

        </div>
        <div class="col-lg-4">
          <div class="blog-sidebar">
            <div class="sidebar-search">
              <form action="{{ route('frontend.search.index') }}" method="GET">
                <div class="form-group">
                  <input type="text" class="form-control" name="keyword" placeholder="Nhập và tìm kiếm..." required>
                  <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
                </div>
              </form>
            </div>

            @include('frontend.components.sidebar.post')
        </div>
      </div>
    </div>
  </section>

  {{-- End content --}}
@endsection
