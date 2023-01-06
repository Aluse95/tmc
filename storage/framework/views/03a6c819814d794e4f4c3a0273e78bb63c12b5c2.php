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

  <section class="services" id="school">
    <div class="container">
      <div class="main-title text-center">
        <span class="separator">
          <i class="flaticon-chakra"></i>
        </span>
        <h2 class="mb-3"><?php echo e($title); ?></h2>
        <p><?php echo e($brief); ?></p>
      </div>
      <div class="row">
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
            
            <div class="col-lg-6 col-md-6 col-sm-12">
              <div class="service one">
                <div class="service-bg"><i class="flaticon-lotus"></i></div>
                <div class="service-item">
                  <div class="service-icon">
                    <img src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>">
                  </div>
                  <h4><?php echo e($title_child); ?></h4>
                  <p class="text-justify">
                    <?php echo e(Str::limit($brief_child, 200)); ?>

                  </p>
                </div>
              </div>
            </div>

          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
      </div>
    </div>
  </section>



<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/blocks/custom/styles/about_development.blade.php ENDPATH**/ ?>