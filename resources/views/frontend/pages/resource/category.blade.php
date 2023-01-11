@extends('frontend.layouts.default')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
  
  $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
  $image = $taxonomy->json_params->image ?? null;
  $seo_title = $taxonomy->json_params->seo_title ?? $title;
  $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
  $seo_description = $taxonomy->json_params->seo_description ?? null;
  $seo_image = $image ?? null;
@endphp

@section('content')

  <section class="events bg-light">
    <div class="container">
      <div class="row">
        @foreach ($posts as $item)
          @php
            $title_child = $item->json_params->title->{$locale} ?? $item->title;
            $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
            $image_child = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
            // $date = date('H:i d/m/Y', strtotime($item->created_at));
            $date = date('d', strtotime($item->created_at));
            $month = date('M', strtotime($item->created_at));
            $year = date('Y', strtotime($item->created_at));
            // Viet ham xu ly lay slug
            $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
            $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
          @endphp

          <div class="col-lg-6">
            <div class="event">
              <div class="event-img">
                <a href="{{ $alias }}">
                  <img style="height: 400px; width:100%" src="{{ $image_child }}" alt="{{ $title_child }}">
                </a>
              </div>
              <div class="event-content">
                <div class="event-title">
                  <a href="{{ $alias }}">
                    <h4>{{ $title_child }}</h4>
                  </a>
                </div>
                <div class="event-text">
                  <p></p>
                </div>
                <a class="event-more" href="">Xem chi tiết</a>
              </div>
            </div>
          </div>

        @endforeach

        {{ $posts->withQueryString()->links('frontend.pagination.default') }}
        
        </div>
    </div>
  </section>

  {{-- End content --}}
@endsection
