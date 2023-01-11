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
  $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $taxonomy_alias, $detail->taxonomy_id);
  
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
        <div class="col-lg-12">
          <div class="blog-single">
            <div class="post">
              <!-- Post Content -->
              <div class="post-content">
                <div class="post-text px-3 text-justify" id="content-detail">
                  @isset($detail->json_params->gallery_video)
                    @foreach ($detail->json_params->gallery_video as $key => $item)
                      @if ($item->source != '')
                        @if (Str::contains($item->source, 'youtu.be') || Str::contains($item->source, 'youtube.com'))
                          @php
                            if (Str::contains($item->source, 'v=')) {
                                $video_code = 'https://www.youtube.com/embed/' . Str::afterLast($item->source, 'v=');
                            } else {
                                $video_code = 'https://www.youtube.com/embed/' . Str::afterLast($item->source, '/');
                            }
                          @endphp
                          <p class="pt-3">
                            <iframe title="{{ $item->title ?? '' }}" width="100%" height="50%" src="{{ $video_code }}"
                              frameborder="0"
                              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                              allowfullscreen>
                            </iframe>
                          </p>
                          <p class="pt-3 text-center"><strong>{{ $item->title ?? '' }}</strong></p>
                        @else
                          <p class="pt-3 center" title="{{ $item->title ?? '' }}">
                            <video preload="auto" controls style="display: block; width: 100%; height: 500px">
                              <source src='{{ $item->source ?? '' }}' />
                            </video>
                          </p>
                          <h3 class="pt-3 mt-4 text-center">{{ $item->title ?? '' }}</h3>
                        @endif
                      @endif
                    @endforeach
                  @endisset

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
      </div>
    </div>
  </section>

  {{-- End content --}}
@endsection
