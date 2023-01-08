<div class="sidebar-posts">
  @php
    $params_product['status'] = App\Consts::POST_STATUS['active'];
    $params_product['is_type'] = App\Consts::POST_TYPE['post'];
    $params_product['order_by'] = 'id';
    
    $recents = App\Http\Services\ContentService::getCmsPost($params_product)
        ->limit(App\Consts::PAGINATE['sidebar'])
        ->take(4)
        ->get();
  @endphp
  @isset($recents)

    <h4 class="title-widget text-uppercase">@lang('Latest post')</h4>
    @foreach ($recents as $item)
      @php
        $title = $item->json_params->title->{$locale} ?? $item->title;
        $brief = $item->json_params->brief->{$locale} ?? $item->brief;
        $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
        $date = date('H:i d/m/Y', strtotime($item->created_at));
        // Viet ham xu ly lay slug
        $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
      @endphp

      <div class="post-inner mb-5">
        <div class="post-image">
          <a href="{{ $alias }}">
            <img class="img-fluid" src="{{ $image }}" alt="{{ $title }}">
          </a>
        </div>
        <div class="post-info">
          <h5>
            <a href="{{ $alias }}">
              {{ Str::limit($brief, 20)  }}
            </a>
          </h5>
          <p>{{ $date }}</p>
        </div>
      </div>

    @endforeach


  @endisset

  @php
    $params_product['status'] = App\Consts::POST_STATUS['active'];
    $params_product['is_type'] = App\Consts::POST_TYPE['post'];
    $params_product['order_by'] = 'count_visited';
    
    $mostViews = App\Http\Services\ContentService::getCmsPost($params_product)
        ->limit(App\Consts::PAGINATE['sidebar'])
        ->take(4)
        ->get();
  @endphp
  @isset($mostViews)

    <h4 class="title-widget text-uppercase">@lang('Most viewed post')</h4>
    @foreach ($mostViews as $item)
      @php
        $title = $item->json_params->title->{$locale} ?? $item->title;
        $brief = $item->json_params->brief->{$locale} ?? $item->brief;
        $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
        $date = date('H:i d/m/Y', strtotime($item->created_at));
        // Viet ham xu ly lay slug
        $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
      @endphp

      <div class="post-inner mb-5">
        <div class="post-image">
          <a href="{{ $alias }}">
            <img class="img-fluid" src="{{ $image }}" alt="{{ $title }}">
          </a>
        </div>
        <div class="post-info">
          <h5>
            <a href="{{ $alias }}">
              {{ Str::limit($brief, 20)  }}
            </a>
          </h5>
          <p>{{ $date }}</p>
        </div>
      </div>

    @endforeach

  @endisset

</div>
