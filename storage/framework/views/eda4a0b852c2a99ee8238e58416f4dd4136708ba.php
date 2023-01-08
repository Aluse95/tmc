<a href="#" class="scroll-top">
  <span><i class="fa fa-arrow-up"></i></span>
</a>

<script src="<?php echo e(asset('themes/frontend/xkld/js/jquery-3.2.1.min.js')); ?>"></script>
<script src="<?php echo e(asset('themes/frontend/xkld/js/popper.min.js')); ?>"></script>
<script src="<?php echo e(asset('themes/frontend/xkld/js/bootstrap.min.js')); ?>"></script>
<script src="<?php echo e(asset('themes/frontend/xkld/js/owl.carousel.min.js')); ?>"></script>
<script src="<?php echo e(asset('themes/frontend/xkld/js/wow.min.js')); ?>"></script>
<script src="<?php echo e(asset('themes/frontend/xkld/js/custom.js')); ?>"></script>
<script src="<?php echo e(asset('themes/frontend/xkld/js/tobii.min.js')); ?>"></script>

<!-- swiper -->
<script src="<?php echo e(asset('../cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js')); ?>"></script>

<script>
  $(function() {

    $("#form-booking").submit(function(e) {
      $(".form-process").show();
      e.preventDefault();
      var form = $(this);
      var url = form.attr('action');
      $.ajax({
        type: "POST",
        url: url,
        data: form.serialize(),
        success: function(response) {
          form[0].reset();
          $(".form-process").hide();
          alert(response.message);
          location.reload();
        },
        error: function(response) {
          $(".form-process").hide();
          // Get errors
          if (typeof response.responseJSON.errors !== 'undefined') {
            var errors = response.responseJSON.errors;
            // Foreach and show errors to html
            var elementErrors = '';
            $.each(errors, function(index, item) {
              if (item === 'CSRF token mismatch.') {
                item = "Mã xác thực CSRF không đúng. Vui lòng tải lại trang!";
              }
              elementErrors += '<p>' + item + '</p>';
            });
            $(".form-result").html(elementErrors);
          } else {
            var errors = response.responseJSON.message;
            if (errors === 'CSRF token mismatch.') {
              $(".form-result").html("Mã xác thực CSRF không đúng. Vui lòng tải lại trang!");
            } else if (errors === 'The given data was invalid.') {
              $(".form-result").html("Dữ liệu không chính xác.");
            } else {
              $(".form-result").html(errors);
            }
          }
        }
      });
    });

    // Form ajax default
    $(".form_ajax").submit(function(e) {
      e.preventDefault();
      var form = $(this);
      var url = form.attr('action');
      $.ajax({
        type: "POST",
        url: url,
        data: form.serialize(),
        success: function(response) {
          form[0].reset();
          alert(response.message);
          location.reload();
        },
        error: function(response) {
          // Get errors
          console.log(response);
          var errors = response.responseJSON.errors;
          // Foreach and show errors to html
          var elementErrors = '';
          $.each(errors, function(index, item) {
            if (item === 'CSRF token mismatch.') {
              item = "Mã xác thực CSRF không đúng. Vui lòng tải lại trang!";
            }
            elementErrors += '<p>' + item + '</p>';
          });
        }
      });
    });

    // Add to cart
    $(document).on('click', '.add-to-cart', function() {
      let _root = $(this);
      let _html = _root.html();
      let _id = _root.attr("data-id");
      let _quantity = _root.attr("data-quantity") ?? $("#quantity").val();
      if (_id > 0) {
        _root.html("Đang xử lý...");
        var url = "add-to-cart.html";
        $.ajax({
          type: "POST",
          url: url,
          data: {
            "_token": "6wCnumG8SyuRys3iTNCrKNotKP7AH1wnUHb77SXc",
            "id": _id,
            "quantity": _quantity
          },
          success: function(data) {
            _root.html(_html);
            window.location.reload();
          },
          error: function(data) {
            // Get errors
            var errors = data.responseJSON.message;
            alert(errors);
            location.reload();
          }
        });
      }
    });

    $(".update-cart").change(function(e) {
      e.preventDefault();
      var ele = $(this);
      $.ajax({
        url: 'https://hocvienqlady.com/update-cart',
        method: "PATCH",
        data: {
          _token: '6wCnumG8SyuRys3iTNCrKNotKP7AH1wnUHb77SXc',
          id: ele.parents("tr").attr("data-id"),
          quantity: ele.parents("tr").find(".qty").val()
        },
        success: function(response) {
          window.location.reload();
        }
      });
    });

    $(".remove-from-cart").click(function(e) {
      e.preventDefault();
      var ele = $(this);
      if (confirm("Are you sure want to remove?")) {
        $.ajax({
          url: 'https://hocvienqlady.com/remove-from-cart',
          method: "DELETE",
          data: {
            _token: '6wCnumG8SyuRys3iTNCrKNotKP7AH1wnUHb77SXc',
            id: ele.parents("tr").attr("data-id")
          },
          success: function(response) {
            window.location.reload();
          }
        });
      }
    });

  });

  const filterArray = (array, fields, value) => {
    fields = Array.isArray(fields) ? fields : [fields];
    return array.filter((item) => fields.some((field) => item[field] === value));
  };
</script>

<!-- Google tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-YTW8EQX84Y">
</script>

<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-YTW8EQX84Y');
</script>

<script>
  $(".gallery .owl-carousel").owlCarousel({
    items: 4,
    nav: true,
    dots: false,
    autoplay: true,
    smartSpeed: 500,
    margin: 30,
    navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    loop: true,
    autoplayHoverPause: true,
    responsiveClass: true,
    responsive: {
      0: {
        items: 1
      },
      991: {
        items: 2
      },
      1200: {
        items: 3
      },
      1500: {
        items: 4
      }
    }
  });

  var swiper = new Swiper(".mySwiper", {
    slidesPerView: 1,
    spaceBetween: 15,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
    // when window width is >= 320px
    640: {
      slidesPerView: 2,
      spaceBetween: 15
    },
    // when window width is >= 480px
    992: {
      slidesPerView: 3,
      spaceBetween: 15
    },
    // when window width is >= 640px
    1200: {
      slidesPerView: 4,
      spaceBetween: 15
    }
  }
  });

  const tobii = new Tobii();
</script>

<?php /**PATH C:\xampp\htdocs\xkld\resources\views/frontend/panels/scripts.blade.php ENDPATH**/ ?>