<div class="sidebar-posts">
  <?php
    $params_product['status'] = App\Consts::POST_STATUS['active'];
    $params_product['is_type'] = App\Consts::POST_TYPE['post'];
    $params_product['order_by'] = 'id';
    
    $recents = App\Http\Services\ContentService::getCmsPost($params_product)
        ->limit(App\Consts::PAGINATE['sidebar'])
        ->take(4)
        ->get();
  ?>
  <?php if(isset($recents)): ?>

    <h4 class="title-widget text-uppercase"><?php echo app('translator')->get('Latest post'); ?></h4>
    <?php $__currentLoopData = $recents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
        $title = $item->json_params->title->{$locale} ?? $item->title;
        $brief = $item->json_params->brief->{$locale} ?? $item->brief;
        $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
        $date = date('H:i d/m/Y', strtotime($item->created_at));
        // Viet ham xu ly lay slug
        $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
      ?>

      <div class="post-inner mb-5">
        <div class="post-image">
          <a href="<?php echo e($alias); ?>">
            <img class="img-fluid" src="<?php echo e($image); ?>" alt="<?php echo e($title); ?>">
          </a>
        </div>
        <div class="post-info">
          <h5>
            <a href="<?php echo e($alias); ?>">
              <?php echo e(Str::limit($title, 20)); ?>

            </a>
          </h5>
          <p><?php echo e($date); ?></p>
        </div>
      </div>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


  <?php endif; ?>

  <?php
    $params_product['status'] = App\Consts::POST_STATUS['active'];
    $params_product['is_type'] = App\Consts::POST_TYPE['post'];
    $params_product['order_by'] = 'count_visited';
    
    $mostViews = App\Http\Services\ContentService::getCmsPost($params_product)
        ->limit(App\Consts::PAGINATE['sidebar'])
        ->take(4)
        ->get();
  ?>
  <?php if(isset($mostViews)): ?>

    <h4 class="title-widget text-uppercase"><?php echo app('translator')->get('Most viewed post'); ?></h4>
    <?php $__currentLoopData = $mostViews; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
        $title = $item->json_params->title->{$locale} ?? $item->title;
        $brief = $item->json_params->brief->{$locale} ?? $item->brief;
        $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
        $date = date('H:i d/m/Y', strtotime($item->created_at));
        // Viet ham xu ly lay slug
        $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
      ?>

      <div class="post-inner mb-5">
        <div class="post-image">
          <a href="<?php echo e($alias); ?>">
            <img class="img-fluid" src="<?php echo e($image); ?>" alt="<?php echo e($title); ?>">
          </a>
        </div>
        <div class="post-info">
          <h5>
            <a href="<?php echo e($alias); ?>">
              <?php echo e(Str::limit($title, 20)); ?>

            </a>
          </h5>
          <p><?php echo e($date); ?></p>
        </div>
      </div>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

  <?php endif; ?>

</div>
<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/components/sidebar/post.blade.php ENDPATH**/ ?>