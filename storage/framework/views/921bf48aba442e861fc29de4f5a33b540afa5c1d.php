<?php if($block): ?>
  <?php
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
  ?>

  <style>
    .gallery {
      position: relative;
      padding-top: 70px;
      padding-bottom: 70px;
    }

    .lightbox img {
      width: 100%;
    }

    .gallery .owl-carousel .owl-nav .owl-next,
    .gallery .owl-carousel .owl-nav .owl-prev {
      font-size: 24px;
      color: #CDCDCD;
      width: 45px;
      height: 45px;
      line-height: 36px;
      text-align: center;
      background-color: transparent;
      border: 1px solid #CDCDCD;
      border-radius: 3px;
      outline: none;
      z-index: 999;
      margin: 0 7px;
    }

    .gallery .owl-carousel .owl-nav .owl-next:hover,
    .gallery .owl-carousel .owl-nav .owl-prev:hover {
      background: rgb(255, 233, 131);
      background: linear-gradient(73deg, rgba(255, 233, 131, 1) 1%, rgba(222, 167, 16, 1) 39%, rgba(255, 233, 131, 1) 75%, rgba(255, 233, 131, 1) 100%);
    }
  </style>
  <section id="gallery" class="gallery bg-light">
    <div class="container-fluid">
      <div class="main-title">
        <span class="separator">
          <i class="flaticon-chakra"></i>
        </span>
        <h2 class="text-dark"><?php echo e($title); ?></h2>
      </div>
      <div class="row swiper mySwiper">
        <div class="swiper-wrapper"> 
          <?php if($block_childs): ?>
            <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php
                $title_child = $item->json_params->title->{$locale} ?? $item->title;
                $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                $content_child = $item->json_params->content->{$locale} ?? $item->content;
                $image_child = $item->image != '' ? $item->image : null;
                $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
                $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                $icon = $item->icon != '' ? $item->icon : '';
                $style = $item->json_params->style ?? '';
              ?>

              <div class="swiper-slide">
                <a href="https://www.youtube.com/embed/wuKt0izhWMI" data-type="iframe" class="lightbox"
                  style="display: block; overflow: hidden;">
                  <img src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>" />
                  <div class="gallery-box">
                    <p class="gallery-text">
                      <?php echo e($title_child); ?>

                    </p>
                  </div>
                  <style>
                    .gallery-box {
                      position: absolute;
                      top: 100%;
                      left: 0;
                      width: 100%;
                      height: 100%;
                      transition: all ease 0.5s;
                      display: flex;
                      justify-content: center;
                      align-items: center;
                      background-color: #552260cf;
                    }
    
                    .lightbox:hover .gallery-box {
                      top: 0;
                    }
    
                    .gallery-text {
                      color: #ffc50c;
                      font-size: 20px;
                      width: 80%;
                      text-align: center;
                      margin-bottom: 0;
                    }
                  </style>
                </a>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>                           
          
        </div>
        

      </div>
    </div>
  </section>

<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/blocks/custom/styles/core_value.blade.php ENDPATH**/ ?>