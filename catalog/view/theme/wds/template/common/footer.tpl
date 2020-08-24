<div class="main-content full-width home zfooter">
    <div class="footer full-width zfooter">
        <div class="container zfooter " style="background-color:#229AC8;color:#ffffff">
            <div class="row zpadding-footer">
                <?php if ($informations) { ?>
                <div class="col-sm-6 col-xs-12 col-md-4 path footer-column">
                    <h4><span style="background-color:#229AC8;color:#ffffff"><?php echo "LIÊN HỆ VỚI CHÚNG TÔI" ?></span></h4>
                    <ul>
						<li><span class="fa fa-map-marker" ><?php echo "&ensp;", $config_address; ?></span></li>
						<li><span class="fa fa-phone" ><?php echo "&ensp;", "Hotline1: ", "(86) 13 80 3116 041", " (Liu Shi Bin)"; ?></span></li>
						<li><span class="fa fa-phone" ><?php echo "&ensp;", "Hotline2: ", "(84) 86 23 18826", " (Liu Shi Bin)"; ?></span></li>
						<li><span class="fa fa-phone" ><?php echo "&ensp;", "Hotline3: ", $config_telephone, " (Ms Thảo)"; ?></span></li>
						<li><span class="fa fa-envelope" ><?php echo "&ensp;", $config_email; ?></span></li>
						<li><span class="fa fa-user" ><?php echo "&ensp;", "Người đại diên: ", $config_owner; ?></span></li>
						<li><span class="fa fa-files-o" ><?php echo "&ensp;", "MST: ", "0601034998" ?></span></li>
						<li><span class="fa fa-files-o" ><?php echo "&ensp;", "Ngày cấp: ", "23/04/2014" ?></span></li>
						<li><span class="fa fa-files-o" ><?php echo "&ensp;", "Nơi cấp: ", "Sở KH & ĐT Tỉnh Nam Định" ?></span></li>
                    </ul>
                </div>
                <?php } ?>
                <div class="col-sm-6 col-xs-12 col-md-2 footer-column">
                    <h4 style="background-color:#229AC8;color:#ffffff"><?php echo "VỀ THIÊN NAM" ?></h4>
                    <ul class="space_list">
                        <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>" style="background-color:#229AC8;color:#ffffff"><i class="fa fa-angle-right" style="background-color:#229AC8;color:#ffffff"></i><?php echo "&nbsp;" ,$information['title']; ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-sm-6 col-xs-12 col-md-2 footer-column">
                    <h4 style="background-color:#229AC8;color:#ffffff"><?php echo "HỖ TRỢ KHÁCH HÀNG" ?></h4>
                    <ul class="space_list">
                        <li><a href="<?php echo $information['href']; ?>" style="background-color:#229AC8;color:#ffffff"><i class="fa fa-angle-right"></i><?php echo "&nbsp;" ,"Hướng dẫn đặt hàng" ?></a></li>
                        <li><a href="<?php echo $information['href']; ?>" style="background-color:#229AC8;color:#ffffff"><i class="fa fa-angle-right"></i><?php echo "&nbsp;" ,"Hướng dẫn thanh toán" ?></a></li>
                        <li><a href="<?php echo $information['href']; ?>" style="background-color:#229AC8;color:#ffffff"><i class="fa fa-angle-right"></i><?php echo "&nbsp;" ,"Phương thức vận chuyển" ?></a></li>
                        <li><a href="<?php echo $information['href']; ?>" style="background-color:#229AC8;color:#ffffff"><i class="fa fa-angle-right"></i><?php echo "&nbsp;" ,"Chính sách đổi trả" ?></a></li>
                        <li><a href="<?php echo $information['href']; ?>" style="background-color:#229AC8;color:#ffffff"><i class="fa fa-angle-right"></i><?php echo "&nbsp;" ,"Chính sách bảo mật" ?></a></li>
                    </ul>
                </div>
                <div class="col-sm-6 col-xs-12 col-md-2 footer-column">
                    <h4 style="background-color:#229AC8;color:#ffffff"><?php echo "LƯỢT TRUY CẬP" ?></h4>
                    <ul class="space_list">
						<li ><?php echo "&ensp;", "Đang trực tuyến: ", $online_total; ?></li>
						<li ><?php echo "&ensp;", "Hôm nay: ", $online_total_today; ?></li>
						<li ><?php echo "&ensp;", "Hôm qua: ", $online_total_yesterday; ?></li>
						<li ><?php echo "&ensp;", "Tất cả: ", $online_total_all; ?></li>
					</ul>
                </div>
				<div class="col-sm-6 col-xs-12 col-md-2 footer-column">
                    <h4 style="background-color:#229AC8;color:#ffffff"><?php echo "ĐĂNG KÝ NHẬN MAIL" ?></h4>
                    <ul>
						<form accept-charset="utf-8" action="/contact" id="contact" method="post">
							<input name="FormType" type="hidden" value="contact">
							<input name="utf8" type="hidden" value="true"><input type="hidden" id="Token-e9dcd3cb7e104cbdb880067688b5bf8b" name="Token" value="03AGdBq247FRUtq-3zZoJbo0YmsLuLCf38zx73rfKeQ3mtY2XvKR2T_GdBBHkSrXHwFQunjvsA278a7jOgrtuewsz8hnCNRFk3jh-r2xIDyyJUPbkBnQvbWH2aLmY53D_gpLwQmvgxLYAjdTk_jcx_1nuuLPmmOlnQSPuxcMGK0SFin7qFUdhECZTTyZZcaSkxPHnFvHKaITCZiZZBJ1sgqSMVwGBrE3c3UtPgZwJF0Im-2eq82olrCE4H81K2NTuvrXzMf-kDZSV4R-pGFxyJ1QgogLWFgmOKr5XaazFVJv6dmnSf_un2dZ0tgWu2Xz0p76a6qIAZfEQ1HzlBJVv3HVSXoGs0ZXlTW-TILD1WM7yehtIMCTmQO2_G-1IEkGg3zS0sJcNnBU_8zivT1a8HL7pVn77Bb8VXwg"><script src="https://www.google.com/recaptcha/api.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script>
							<script>
							grecaptcha.ready(function() {
							grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", {action: "/contact"})
							.then(function(token) {
							document.getElementById("Token-e9dcd3cb7e104cbdb880067688b5bf8b").value = token
							});
							});
							</script>
						
						
							<input id="name" name="contact[Name]" type="text" value="Guest" class="form-control hidden" style="display:none">
							<!--<input type="text" class="form-control hidden" name="contact[phone]" value="NaN"  placeholder="Phone number">--> 
							<textarea id="message" name="contact[Body]" style="display:none" class="form-control hidden" rows="1">Đăng ký email liên hệ</textarea>
							<div class="input-group" id="mail-box" style="width:100%;padding-top: 13px;">

								<input onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email nhận tin'" id="email" class="input_newsletter input-text required-entry validate-email" name="contact[Email]" type="email" value="" placeholder="Email nhận tin" style="border-radius: 5px;box-shadow: none;border: solid 1px #c7c7c7;padding: 5px;font-size: 12px;width: 100%">

								<button type="submit" class="subcribe" style="background: #d7982c;color: #fff;border: solid 1px #d7982c;border-radius: 5px;margin: 10px 0;font-size: 15px;padding: 2px 10px;"><span>Đăng ký</span></button>

							</div>
						</form>
					</ul>
					<a href="http://online.gov.vn/CustomWebsiteDisplay.aspx?DocId=39980"><img src="//bizweb.dktcdn.net/100/144/213/themes/189501/assets/bct-200.png?1595905697196" style="max-width:100%"></a>
					<a class="complaint" href=""><img src="//bizweb.dktcdn.net/100/144/213/themes/189501/assets/gop-y-khieu-nai.png?1595905697196" alt="Góp ý khiếu nại"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright zcopyright">
        <div class="container pattern" style="background-color:#229AC8;color:#ffffff">
            <p class="copyright-left"><?php echo $powered; ?></p>
            <ul class="copyright-right">
                <li><a href="http://paypal.com/" target="_blank"><img src="catalog/view/theme/wds/image/paypal.png" alt=""></a>
                </li>
                <li><a href="http://visa.com/" target="_blank"><img src="catalog/view/theme/wds/image/visa.png" alt=""></a></li>
                <li><a href="http://mastercard.com/" target="_blank"><img src="catalog/view/theme/wds/image/mastercard.png"  alt=""></a></li>
            </ul>
        </div>
    </div>
	
    <script type="text/javascript" src="catalog/view/theme/wds/js/megamenu.js"></script>
</div>
<a href="#" class="scrollup"><i class="fa fa-caret-up"></i></a>
</div>
</body>
</html>