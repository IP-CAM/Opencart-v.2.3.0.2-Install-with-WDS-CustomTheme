<?php if($categories): ?>
<div class="box box-categories box-with-categories">
    <div class="box-heading" style="background-color:#229AC8;color:#ffffff"><?php echo "&ensp;&ensp;", $text_wds_category, "&ensp;&ensp;&ensp;" ?><i class="fa fa-bars"></i></div>
    <div class="strip-line"></div>
    <!--div class="box-content box-information" style="min-height: 421px;"-->
    <div class="box-content box-information" style="min-height: 131px;">
        <div class="box-information">
            <ul class="accordion" id="accordion-category">
                <?php foreach ($categories as $category) { ?>
                    <li>
                        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
<?php endif; ?>
