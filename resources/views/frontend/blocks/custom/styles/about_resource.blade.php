@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  @endphp

  <section class="about-us bg-light" id="about-us">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 info" style="display: flex; align-items: center;">
          <div class="about-info">
            <h3>{{ $title }}</h3>
            <h4>{{ $brief }}</h4>
            <p class="mb-5">{{ $content }}</p>
          </div>
        </div>
        <div class="col-lg-6 image">
          <div class="about-image">
            <img style="height: 360px" class="img-fluid" src="{{ $image }}" alt="{{ $title }}" />
          </div>
        </div>
      </div>
    </div>
  </section>

@endif
