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

    <section class="newsletter bg-light" id="newsletter">
        <div class="container">
        <div class="newsletter-inner">
            <div class="row">
            <div class="col-lg-5">
                <h2><?php echo e($title); ?></h2>
                <p><?php echo e($brief); ?></p>
            </div>
            <div class="col-lg-7">

                
                
                <form class="newsletter-form form_ajax" action="<?php echo e(route('frontend.contact.store')); ?>" method="post">
                    <?php echo csrf_field(); ?>              
                    <div class="form-group">
                      <input type="text" class="form-control" name="phone" placeholder="Nhập email của bạn.." required />
                      <input type="hidden" name="is_type" value="newsletter">
                      <button class="main-btn" type="submit" name="send">
                        <span>Đăng ký</span>
                      </button>
                    </div>
                </form>
                
            </div>
            </div>
        </div>
        </div>
    </section>

<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/blocks/custom/styles/about_contact.blade.php ENDPATH**/ ?>