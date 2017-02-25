$(document).ready(function() {
    $('.capcha-refresh').click(function(a) {
        $('.captcha').attr('src', '<?php echo URL; ?>public/images/captcha.php' + Math.random());
        a.preventDefault();
    })
});