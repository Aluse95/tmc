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

    <section class="contact bg-light" id="contact">
        <div class="container-fluid">
        <div class="row">
            <div class="col-xl-6 col-lg-12">
            <img src="<?php echo e($image); ?>" alt="" style="width: 100%">
            </div>

            <div class="col-xl-6 col-lg-12">
            <div class="text-center pb-3">
                <h2 class="mb-3"><?php echo e($title); ?></h2>
                <p><?php echo e($brief); ?></p>
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

<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/blocks/custom/styles/about_register.blade.php ENDPATH**/ ?>