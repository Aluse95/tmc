

<?php
  $page_title = $taxonomy->title ?? ($page->title ?? ($page->name ?? ''));
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
?>

<?php $__env->startSection('content'); ?>
  
  <h2 class="text-center my-5"><?php echo e($page_title); ?></h2>
  <?php if(isset($page->content) && $page->content != ''): ?>
    <div class="section bg-white m-0" id="content-detail">
      <div class="container">
        <?php echo $page->content ?? ''; ?>

      </div>
    </div>
  <?php endif; ?>
  
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/pages/custom/index.blade.php ENDPATH**/ ?>