<div class="header-inner bg-main-pink data-sticky-shrink="false"">
  <div class="container">
    <div class="row">
      <div class="col-lg-2 col-12 text-md-center">
        <!-- Logo -->
        <a href="<?php echo e(route('frontend.home')); ?>" data-dark-logo="<?php echo e($web_information->image->logo_header ?? ''); ?>"
          class="my-logo pt-1"><img class="logo-img" src="<?php echo e($web_information->image->logo_header ?? ''); ?>" alt="Logo"  style="max-height: 75px;"/>
        </a>
        <!-- Button Menu -->
        <button class="menu-toggle">
          <span class="bar"></span>
          <span class="bar"></span>
          <span class="bar"></span>
        </button>
      </div>
      <div class="col-lg-10 col-12">
        <div class="main-menu">
          <ul class="nav-search">
            <li class="search-btn">
              <a href="#" class="fa fa-search"></a>
            </li>
          </ul>

          <form class="search-form" action="<?php echo e(route('frontend.search.index')); ?>" method="get">
            <input type="search" name="keyword" placeholder="<?php echo app('translator')->get('Nhập và tìm kiếm...'); ?>" value="<?php echo e($params['keyword'] ?? ''); ?>" class="form-control" />
            <button type="submit" class="search-btn">
              <i class="fa fa-paper-plane"></i>
            </button>
          </form>
          
          <nav class="navbar navbar-expand-lg">
            <div class="navbar-collapse">
              <ul class="nav navbar-nav">
                <?php if(isset($menu)): ?>
                  <?php
                    $main_menu = $menu->first(function ($item, $key) {
                        return $item->menu_type == 'header' && ($item->parent_id == null || $item->parent_id == 0);
                    });
                    if ($main_menu) {
                        $content = '';
                        foreach ($menu as $item) {
                            $url = $title = '';
                            if ($item->parent_id == $main_menu->id) {
                                $title = isset($item->json_params->title->{$locale}) && $item->json_params->title->{$locale} != '' ? $item->json_params->title->{$locale} : $item->name;
                                $url = $item->url_link;
                                $active = $url == url()->full() ? 'active' : '';
                    
                                $content .= '<li class="' . $active . '"><a class="nav-link" href="' . $url . '"><div>' . $title . '</div></a>';
                    
                                if ($item->sub > 0) {
                                    $content .= '<ul class="sub-menu-container">';
                                    foreach ($menu as $item_sub) {
                                        $url = $title = '';
                                        if ($item_sub->parent_id == $item->id) {
                                            $title = isset($item_sub->json_params->title->{$locale}) && $item_sub->json_params->title->{$locale} != '' ? $item_sub->json_params->title->{$locale} : $item_sub->name;
                                            $url = $item_sub->url_link;
                    
                                            $content .= '<li class=""><a class="nav-link" href="' . $url . '"><div>' . $title . '</div></a>';
                    
                                            if ($item_sub->sub > 0) {
                                                $content .= '<ul class="sub-menu-container">';
                                                foreach ($menu as $item_sub_2) {
                                                    $url = $title = '';
                                                    if ($item_sub_2->parent_id == $item_sub->id) {
                                                        $title = isset($item_sub_2->json_params->title->{$locale}) && $item_sub_2->json_params->title->{$locale} != '' ? $item_sub_2->json_params->title->{$locale} : $item_sub_2->name;
                                                        $url = $item_sub_2->url_link;
                    
                                                        $content .= '<li class=""><a class="nav-link" href="' . $url . '"><div>' . $title . '</div></a></li>';
                                                    }
                                                }
                                                $content .= '</ul>';
                                            }
                                            $content .= '</li>';
                                        }
                                    }
                                    $content .= '</ul>';
                                }
                                $content .= '</li>';
                            }
                        }
                        echo $content;
                    }
                  ?>
                <?php endif; ?>
                </ul>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>

<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/blocks/header/styles/default.blade.php ENDPATH**/ ?>