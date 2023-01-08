

<?php $__env->startPush('style'); ?>
</style>
  <meta name="google-site-verification" content="Xr6yb1OxcJtOlWdMgzQBC2EzH7PlctYTrXMXngXhp80" />

  <style>
  .contact .contact-boxes .contact-box {
    padding: 20px;
    background: #DEA710;
    text-align: center;
    color: #f1f3f1;
    border-radius: 6px;
    margin-bottom: 30px;
    position: relative;
  }
  </style>

<?php $__env->stopPush(); ?>

<?php
  $page_title = $taxonomy->title ?? ($page->title ?? ($page->name ?? ''));
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
?>

<?php $__env->startSection('content'); ?>

  
  <section class="contact" id="contact">
    <div class="container">
      <i class="flaticon-lotus"></i>
      <div class="row">
        <div class="col-xl-12 col-lg-12">
          <div class="contact-boxes">
            <div class="row">
              <div class="col-md-4">
                <div class="contact-box">
                  <div class="icon-box">
                    <i class="fa fa-phone"></i>
                  </div>
                  <div class="content-box">
                    <h5>Điện thoại</h5>
                    <p><br><?php echo $web_information->information->phone ?? ''; ?></p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="contact-box two">
                  <i class="flaticon-lotus"></i>
                  <div class="icon-box">
                    <i class="fa fa-envelope-o"></i>
                  </div>
                  <div class="content-box">
                    <h5>Email</h5>
                    <p><br><?php echo $web_information->information->email ?? ''; ?></p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="contact-box">
                  <div class="icon-box">
                    <i class="fa fa-map-marker"></i>
                  </div>
                  <div class="content-box">
                    <h5>Địa chỉ</h5>
                    <p><?php echo $web_information->information->address ?? ''; ?></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
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
              <label for="subject"><?php echo app('translator')->get('address'); ?>:</label>
              <span class="input-border"></span>
            </div>
            <div class="form-group">
              <textarea class="form-control" id="content" name="content" required data-value="" autocomplete="off"
                onkeyup="this.setAttribute('data-value', this.value);"></textarea>
              <label for="message">Nội dung *</label>
              <span class="input-border"></span>
            </div>
            <!-- Button Send Message  -->
            <input type="hidden" name="is_type" value="contact">
            <button class="contact-btn main-btn" type="submit" name="send">
              <span>Gửi liên hệ</span>
            </button>
            <!-- Form Message  -->
            <div class="form-message text-center"><span></span></div>

            <input type="hidden" name="is_type" value="contact">
          </form>
        </div>
      </div>
    </div>
  </section>


  
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/pages/contact/index.blade.php ENDPATH**/ ?>