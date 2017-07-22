$("#menu-toggle").click(function (e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");

    $('.sid-profile').toggleClass('my-hide')
});
$("#menu-toggle-2").click(function (e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled-2");
    $('#menu ul').hide();
    $('.sid-profile').slideToggle();
});
//$('#sidebar-wrappe').mouseinter(function (e) {
//    $('.sid-profile').toggleClass('my-hide')
//})

$("#menu a").click(function () {
    if (!$(this).parent().hasClass("active") && (!$(this).hasClass("sub-menu"))) {
        $(".active").removeClass("active");
        $(this).parent().addClass("active");
    }
    else if ($(this).hasClass("sub-menu")) {
        if (!$(this).parent().hasClass("sub-active")) {
            $(".sub-active").removeClass("sub-active");
            $(this).parent().addClass("sub-active");
        } else {
            return false;//this prevents flicker
        }
    }
    else {
        return false;//this prevents flicker
    }
});
//$(".sub-menu").click(function () {
//    if (!$(this).parent().hasClass("sub-active")) {
//        $(".sub-active").removeClass("sub-active");
//        $(this).parent().addClass("sub-active");
//    } else {
//        return false;//this prevents flicker
//    }
//});

function initMenu() {
    $('#menu ul').hide();
    $('#menu ul').children('.current').parent().show();
    $('.sid-profile').slideToggle();
    //$('#menu ul:first').css("display","block")
    $('#menu li a').click(
      function () {
          var checkElement = $(this).next();
          if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
              return false;
          }
          if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
              $('#menu ul:visible').slideUp('normal');
              checkElement.slideDown('normal');
              return false;
          }
      }
      );
}
$(document).ready(function () { initMenu(); });