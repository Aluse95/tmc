<section class="newsletter bg-light" id="newsletter">
  <div class="container">
  <div class="newsletter-inner">
      <div class="row">
      <div class="col-lg-5">
          <h2>Đăng ký nhận thông báo</h2>
          <p>Nhận thông báo mới từ Học viện qua email của bạn</p>
      </div>
      <div class="col-lg-7">

          {{-- <div class="widget subscribe-widget clearfix">
              <h5>Liên hệ với chúng tôi ngay hôm nay!</h5>
              <form id="widget-subscribe-form" action="" method="post" class="mb-0">
                @csrf
                <div class="input-group mx-auto">
                  <input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email"
                    class="form-control bg-light required email" placeholder="Email của bạn.." style="border-radius: 0px"
                  />
                  <button class="button button-large mx-0 my-0" type="submit"><i class="icon-email2"></i></button>
                </div>
              </form>
          </div> --}}
          
          <form class="newsletter-form form_ajax" action="{{ route('frontend.contact.store') }}" method="post">
              @csrf              
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

<footer class="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-sm-6 col-12 footer-menu">
          <div class="footer-logo">
            <a class="my-logo" href="index.html">
              <img src="{{ $web_information->image->logo_footer ?? '' }}" alt="Logo" class="logo-img" />
            </a>
          </div>
          <ul class="list-unstyled">
            <li class="text-white">
              <strong>Địa chỉ:</strong>{!! $web_information->information->address ?? '' !!}
            </li>
            <li>
              <strong>Email: </strong>
              <a href="mailto:{{ $web_information->information->email ?? '' }}">
                {{ $web_information->information->email ?? '' }}
              </a>
            </li>
            <li class="tel">
                <strong>Điện thoại:</strong>
                <a href="tel:{{ $web_information->information->phone ?? '' }}">
                  {{ $web_information->information->phone ?? '' }}
                </a>
            </li>
          </ul>
          <ul class="list-unstyled social-media">
            <li>
              @isset($web_information->social->facebook)
                <a href="{{ $web_information->social->facebook }}" target="_blank">
                  <i class="fa fa-facebook"></i>
                </a>
              @endisset
            </li>
            <li>
              @isset($web_information->social->twitter)
                <a href="{{ $web_information->social->twitter }}" target="_blank">
                  <i class="fa fa-twitter"></i>
                </a>
              @endisset
            </li>
            <li>
              @isset($web_information->social->instagram)
                <a href="{{ $web_information->social->instagram }}" target="_blank">
                  <i class="fa fa-instagram"></i>
                </a>
              @endisset
            </li>
            <li>
              @isset($web_information->social->youtube)
                <a href="{{ $web_information->social->youtube }}" target="_blank">
                  <i class="fa fa-youtube"></i>
                </a>
              @endisset
            </li>
          </ul>
        </div>
        @isset($menu)
          @php
            $footer_menu = $menu->filter(function ($item, $key) {
                return $item->menu_type == 'footer' && ($item->parent_id == null || $item->parent_id == 0);
            });
            
            $content = '';
            foreach ($footer_menu as $main_menu) {
                $url = $title = '';
                $title = isset($main_menu->json_params->title->{$locale}) && $main_menu->json_params->title->{$locale} != '' ? $main_menu->json_params->title->{$locale} : $main_menu->name;
                $content .= '<div class="col-lg-4 col-sm-6 col-12 footer-menu"><div class="footer-item ml-5">';
                $content .= '<h4>' . $title . '</h4>';
                $content .= '<ul class="list-unstyled">';
                foreach ($menu as $item) {
                    if ($item->parent_id == $main_menu->id) {
                        $title = isset($item->json_params->title->{$locale}) && $item->json_params->title->{$locale} != '' ? $item->json_params->title->{$locale} : $item->name;
                        $url = $item->url_link;
            
                        $active = $url == url()->current() ? 'active' : '';
            
                        $content .= '<li><a href="' . $url . '">' . $title . '</a>';
                        $content .= '</li>';
                    }
                }
                $content .= '</ul>';
                $content .= '</div></div>';
            }
            echo $content;
          @endphp
        @endisset
        
        <div class="col-lg-4 col-sm-6 col-12 footer-menu">
          <div class="footer-item">
            <h4 class="text-uppercase">Facebook Fanpage</h4>
            {!! $web_information->source_code->footer ?? '' !!}
          </div>
        </div>

      </div>
    </div>
  </div>
  <div class="footer-bottom text-center d-none">
    <div class="copyright">
      <p>&copy; 2022 <a href="https://www.fhmvietnam.vn/" target="_blank"><span>FHM AGENCY</span></a> All rights reserved
      </p>
    </div>
  </div>
</footer>
