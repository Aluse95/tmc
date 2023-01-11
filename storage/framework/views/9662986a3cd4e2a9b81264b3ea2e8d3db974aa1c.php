

<?php $__env->startPush('style'); ?>
  <style>
    .newsletter {
      display: none;
    }
  </style>
<?php $__env->stopPush(); ?>

<?php
  $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
  
  $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
  $brief = $taxonomy->json_params->brief->{$locale} ?? $taxonomy->brief;
  $content = $taxonomy->json_params->content->{$locale} ?? $taxonomy->content;
  $image = $taxonomy->json_params->image ?? null;
  $seo_title = $taxonomy->json_params->seo_title ?? $title;
  $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
  $seo_description = $taxonomy->json_params->seo_description ?? null;
  $seo_image = $image ?? null;
?>

<?php $__env->startSection('content'); ?>

  <section class="events bg-light">
    <div class="container">
      <div class="row">
        <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
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
          ?>

          <div class="col-lg-6">
            <div class="event">
              <div class="event-img">
                <a href="<?php echo e($alias); ?>">
                  <img style="height: 400px; width:100%" src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>">
                </a>
              </div>
              <div class="event-content">
                <div class="event-title">
                  <a href="<?php echo e($alias); ?>">
                    <h4><?php echo e($title_child); ?></h4>
                  </a>
                </div>
                <div class="event-text">
                  <p></p>
                </div>
                <a class="event-more" href="">Xem chi tiết</a>
              </div>
            </div>
          </div>

        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        <?php echo e($posts->withQueryString()->links('frontend.pagination.default')); ?>

        
        </div>
    </div>
  </section>

  <section class="contact bg-light" id="contact">
    <div class="container-fluid">
    <div class="row">
        <div class="col-xl-6 col-lg-12">
        <img src="<?php echo e($image); ?>" alt="" style="width: 100%">
        </div>

        <div class="col-xl-6 col-lg-12">
        <div class="text-center pb-3">
            <h2 class="mb-3"><?php echo e($brief); ?></h2>
            <p><?php echo e($content); ?></p>
        </div>
        <form class="contact-form form_ajax" method="post" action="<?php echo e(route('frontend.contact.store')); ?>">
            <?php echo csrf_field(); ?>
            <div class="form-group">
                <input type="text" class="form-control" id="name" name="name" required value=""
                    autocomplete="off" onkeyup="this.setAttribute('value', this.value);" />
                <label for="name">Họ và tên *</label>
                <span class="input-border"></span>
                </div>
                <div class="form-group">
                <input type="email" class="form-control" id="email" name="email" value="" autocomplete="off"
                    onkeyup="this.setAttribute('value', this.value);" />
                <label for="email">Email</label>
                <span class="input-border"></span>
                </div>
                <div class="form-group">
                <input type="text" class="form-control" id="phone" name="phone" required value=""
                    autocomplete="off" onkeyup="this.setAttribute('value', this.value);" />
                <label for="subject">Điện thoại *</label>
                <span class="input-border"></span>
                </div>
                <div class="form-group">
                <textarea class="form-control" id="content" name="content" required data-value="" autocomplete="off"
                    onkeyup="this.setAttribute('data-value', this.value);"></textarea>
                <label for="message">Nội dung *</label>
                <span class="input-border"></span>
                </div>
                <!-- Button Send Message  -->
                <input type="hidden" name="is_type" value="call_request">
                <button class="contact-btn main-btn" type="submit" name="send">
                <span>Gửi đăng ký</span>
                </button>
                <!-- Form Message  -->
                <div class="form-message text-center"><span></span>
            </div>
        </form>
        </div>

    </div>
    </div>
</section>

  
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/pages/post/category.blade.php ENDPATH**/ ?>