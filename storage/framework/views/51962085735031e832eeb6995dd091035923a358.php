<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '';
    $link = $block->url_link != '' ? $block->url_link : '';
    $link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  ?>

  <section id="testimonials" class="testimonials">
    <div class="container-fluid">
      <div class="main-title">
        <span class="separator">
          <i class="flaticon-chakra"></i>
        </span>
        <h2 class="text-dark"><?php echo e($title); ?></h2>
      </div>
      <div class="row">
        <div class="col-md-12 owl-carousel owl-theme">
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

              <div class="testimonial-box" style="height: 100%;">
                <div class="client-info">
                    <div class="client-pic">
                      <img src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>" />
                    </div>
                  <div class="client-details">
                    <h6 class="text-dark"><?php echo e($title_child); ?></h6>
                  </div>
                </div>
                <div class="description">
                  <p class="text-dark">
                    <?php echo e($brief_child); ?>

                  </p>
                  <div class="star text-center" style="float: none">
                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                  </div>
                </div>
              </div> 

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
          
        </div>
        <div class="col-md-12" style="margin-top: 30px">
          <div class="my-btn text-center">
            <a href="<?php echo e($link); ?>" class="main-btn"><span><?php echo e($link_title); ?></span></a>
          </div>
        </div>
      </div>
    </div>
  </section>

<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/blocks/custom/styles/about_client.blade.php ENDPATH**/ ?>