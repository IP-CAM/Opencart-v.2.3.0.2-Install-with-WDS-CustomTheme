<?php echo $header; ?>
    <div class="main-content full-width home">
        <div class="container">
			<div class="slider-and-category-saidebar menu-category">
	<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<!-- SLIDER-AREA-START -->
							<?php echo $content_slideshow; ?>
							<!-- SLIDER-AREA-END -->
							<!-- <div class="slideshow-container"> -->
								<!-- <div class="slideshow-inner"> -->
									<!-- <div class="mySlides fade">  -->
										<!-- <img  src='https://localhost/upload/image/cache/catalog/banner/banner_cover2-1170x516.jpg' style='width: 100%;' /> -->
									<!-- </div> -->
									<!-- <div class="mySlides fade">  -->
										<!-- <img  src='https://localhost/upload/image/cache/catalog/banner/banner_cover1-1170x516.jpg' style='width: 100%;' /> -->
									<!-- </div> -->
									<!-- <div class="mySlides fade">  -->
										<!-- <img  src='https://localhost/upload/image/cache/catalog/banner/banner_cover3-1170x516.jpg' style='width: 100%;' /> -->
									<!-- </div> -->
								<!-- </div> -->
								<!-- <a class="prev" onclick='plusSlides(-1)'>&#10094;</a> -->
								<!-- <a class="next" onclick='plusSlides(1)'>&#10095;</a> -->
							<!-- </div> -->
							<!-- <br/> -->

							<!-- <div style='text-align: center;'> -->
								<!-- <span class="dot" onclick='currentSlide(1)'></span> -->
								<!-- <span class="dot" onclick='currentSlide(2)'></span> -->
								<!-- <span class="dot" onclick='currentSlide(3)'></span> -->
							<!-- </div> -->

						</div>
					</div>
				</div>
			</div>
	</div>
			<style type="text/css">
				.slideshow-container {
					max-height: 716px !important;
				}
			</style>
<!--
##############################
- ACTIVATE THE BANNER HERE -
##############################
-->
<script type="text/javascript">
	var slideIndex = 1;

	var myTimer;

	var slideshowContainer;
	window.addEventListener('load',function() {
		showSlides(slideIndex);
		myTimer = setInterval(function(){plusSlides(1)}, 4000);
	  
		//COMMENT OUT THE LINE BELOW TO KEEP ARROWS PART OF MOUSEENTER PAUSE/RESUME
		slideshowContainer = document.getElementsByClassName('slideshow-inner')[0];
	  
		//UNCOMMENT OUT THE LINE BELOW TO KEEP ARROWS PART OF MOUSEENTER PAUSE/RESUME
		// slideshowContainer = document.getElementsByClassName('slideshow-container')[0];
	  
		slideshowContainer.addEventListener('mouseenter', pause)
		slideshowContainer.addEventListener('mouseleave', resume)
	}, false);

	// NEXT AND PREVIOUS CONTROL
	function plusSlides(n){
		clearInterval(myTimer);
		if (n < 0){
			showSlides(slideIndex -= 1);
		} else {
			showSlides(slideIndex += 1); 
		}
		
		//COMMENT OUT THE LINES BELOW TO KEEP ARROWS PART OF MOUSEENTER PAUSE/RESUME
		
		if (n === -1){
			myTimer = setInterval(function(){plusSlides(n + 2)}, 4000);
		} else {
			myTimer = setInterval(function(){plusSlides(n + 1)}, 4000);
		}
	}

	//Controls the current slide and resets interval if needed
	function currentSlide(n){
		clearInterval(myTimer);
		myTimer = setInterval(function(){plusSlides(n + 1)}, 4000);
		showSlides(slideIndex = n);
	}

	function showSlides(n){
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		if (n > slides.length) {slideIndex = 1}
		if (n < 1) {slideIndex = slides.length}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex-1].style.display = "block";
		dots[slideIndex-1].className += " active";
	}

	pause = () => {
		clearInterval(myTimer);
	}

	resume = () =>{
		clearInterval(myTimer);
		myTimer = setInterval(function(){plusSlides(slideIndex)}, 4000);
	}
</script>

            <div class="row" style="margin-bottom: 20px;">
                <div class="col-sm-3" id="header_left">
                    <?php echo $column_left; ?>
                </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-8 tg-padding">
                            <?php echo $content_top; ?>
                        </div>
                        <div class="col-sm-4" id="header_right">
                            <?php echo $column_right; ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php echo $content_bottom; ?>
        </div>
    </div>
<?php echo $footer; ?>
<a class="btn-call-now" href="<?php echo "tel ", $config_telephone; ?>">
	<i class="fa fa-phone"></i>
	<span><?php echo "&ensp;", "Hotline ", $config_telephone; ?></span>
</a>