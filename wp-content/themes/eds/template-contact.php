<?php
/*
Template Name: Contact
*/
?>
<?php get_header()?>
<?php while (have_posts()) : the_post();?>
<div id="site-content">

 
			
			<main class="main-content">
				<div class="fullwidth-block inner-content">
					<div class="container">
						<h2 class="page-title"><?php _e("Contact Us","spritz");?></h2>
						<div class="row">
							<div class="col-md-6">

                            <?php the_content();
                                $form  = get_field("contact_form");
                                //var_dump($form); 
                                $formulaireID = $form[0]->ID; 
                               // var_dump($formulaireID);
                                echo do_shortcode( '   [contact-form-7 id="'.$formulaireID.'" html_class="form contact-form"]    ' );
                            ?>
                   <!-- [contact-form-7 id="1234" title="Contact form 1" 
                    html_id="contact-form-1234" html_class="form contact-form"] -->
                                
							</div>
							<div class="col-md-6">
								<div class="map-wrapper">
									<?php the_field("map");?>
									<address>
										<div class="row">
											<div class="col-sm-6">
												<strong><?php the_field("nom"); ?></strong>
												<span><?php the_field("adresse"); ?></span>
											</div>
											<div class="col-sm-6">
												<a href="mailto:office@companyname.com"><?php the_field("email"); ?></a> <br>
												<a href="tel:532930098891"><?php the_field("contact_telephone"); ?></a>
											</div>
										</div>
									</address>
								</div>
							</div>
						</div>
					</div>
                </div> <!-- .testimonial-section -->

 
 
               

				
			</main> <!-- .main-content -->
<?php endwhile;?>
<?php get_footer()?>