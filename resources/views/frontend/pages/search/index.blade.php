@extends('frontend.layouts.default')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
  $seo_title = $page_title . (isset($params['keyword']) && $params['keyword'] != '' ? ': ' . $params['keyword'] : '');
  
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
@endphp
@push('style')
  <style>

  </style>
@endpush
@section('content')
  {{-- Print all content by [module - route - page] without blocks content at here --}}

  <section class="events bg-light">
    <div class="container">
      <div class="row">
        @if (count($posts) > 0)
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
                  <a class="event-more" href="{{ $alias }}">Xem chi tiết</a>
                </div>
              </div>
            </div>

          @endforeach

          {{ $posts->withQueryString()->links('frontend.pagination.default') }}
        @else
          <h3 class="mx-auto">Không tìm thấy kết quả phù hợp!</h3>
        @endif
        
        </div>
    </div>
  </section>

  {{-- End content --}}
@endsection
