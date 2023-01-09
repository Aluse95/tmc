<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $background = $block->image_background != '' ? $block->image_background : url('assets/img/banner.jpg');
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
    
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['is_featured'] = true;
    $params['is_type'] = App\Consts::POST_TYPE['post'];
    
    $rows = App\Http\Services\ContentService::getCmsPost($params)->take(2)->get();
    
  ?>
  <section class="events" id="course">
    <div class="container">
      <div class="main-title text-center">
        <span class="separator">
          <i class="flaticon-chakra"></i>
        </span>
        <h2><?php echo e($title); ?></h2>
      </div>
      <div class="row">
        <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
            $title = $item->json_params->title->{$locale} ?? $item->title;
            $brief = $item->json_params->brief->{$locale} ?? $item->brief;
            $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
            $date = date('H:i d/m/Y', strtotime($item->created_at));
            // Viet ham xu ly lay slug
            $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_title, $item->taxonomy_id);
            $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $title, $item->id, 'detail', $item->taxonomy_title);
          ?>

          <div class="col-lg-6">
            <div class="event">
              <div class="event-img">
                <img style="height: 350px; width: 100% " src="<?php echo e($image); ?>" alt="<?php echo e($title); ?>" />
              </div>
              <div class="event-content">
                <div class="event-title">
                  <a href="<?php echo e($alias); ?>">
                    <h4><?php echo e($title); ?></h4>
                  </a>
                </div>
                
                <a class="event-more" href="<?php echo e($alias); ?>">Xem chi tiết</a>
                <div class="event-date bg-warning">
                  NEW
                </div>
              </div>
            </div>
          </div>

        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </div>
      <div class="my-btn text-center">
        <a href="<?php echo e($url_link); ?>" target="_blank"
          class="main-btn"><span><?php echo e($url_link_title); ?></span></a>
      </div>
    </div>
  </section>

<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/blocks/cms_post/styles/default.blade.php ENDPATH**/ ?>