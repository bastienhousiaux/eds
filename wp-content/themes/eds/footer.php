



<footer>
        <div class="row">
            <div class="col-12">
                <nav>
                    <ul>
                        <li class="mettalos">
                            <a href="<?php the_field('mettalos','option')?>" target="_blank">
								<img src="<?php echo get_template_directory_uri(); ?>/images/logo_grey.png" alt="<?php echo get_bloginfo("site name"); ?>">
				
                            </a>
                        </li>
                        <li class="mdp">
                            <a href="<?php the_field('mdp','option')?>" target="_blank">
                                <img src="<?php echo get_template_directory_uri();?>/images/Logos-MdP-long-web.png" alt="" />
                            </a>
                        </li>
                        <li class="jeunes_fgtb">
                            <a href="<?php the_field('jeunes_fgtb','option')?>" target="_blank">
                                <img src="<?php echo get_template_directory_uri();?>/images/JeunesFGTB_logo_Web.png" alt="" />
                            </a>
                        </li>
                        <li class="cepag">
                            <a href="<?php the_field('cepag0','option')?>" target="_blank">
                                <img src="<?php echo get_template_directory_uri();?>/images/logo_cepag.png" alt="" />
                            </a>
                        </li>
                        <li class="<?php the_field('promotion_culture','option')?>">
                            <a href="http://www.promotionetculture.be/" target="_blank">
                                <img src="<?php echo get_template_directory_uri();?>/images/promotion-et-culture.png" alt="" />
                            </a>
                        </li>
                        <li class="accg">
                            <a href="<?php the_field('accg','option')?>" target="_blank">
                                <img src="<?php echo get_template_directory_uri();?>/images/centrale-generale.png" alt="" />
                            </a>
                        </li>
                        <li class="fgtb">
                            <a href="<?php the_field('fgtb','option')?>" target="_blank">
                                <img src="<?php echo get_template_directory_uri();?>/images/layout_set_logo.png" alt="" />
                            </a>
                        </li>
                        <li class="sirius">
                            <a href="<?php the_field('sirius','option')?>" target="_blank">
                                <img src="<?php echo get_template_directory_uri();?>/images/Groupe-38.png" alt="" />
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
	</footer>
	<?php wp_footer(); ?>
</body>

</html>