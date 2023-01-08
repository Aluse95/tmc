@extends('frontend.layouts.default')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? ($page->name ?? ''));
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
@endphp

@section('content')
  {{-- Print all content by [module - route - page] without blocks content at here --}}
  <h2 class="text-center my-5">{{ $page_title }}</h2>
  @if (isset($page->content) && $page->content != '')
    <div class="section bg-white m-0" id="content-detail">
      <div class="container">
        {!! $page->content ?? '' !!}
      </div>
    </div>
  @endif
  {{-- End content --}}
@endsection
