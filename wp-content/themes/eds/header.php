<!DOCTYPE html>
<html <?php language_attributes(); ?>> 
	<head>
		<meta charset="<?php bloginfo('charset');?>"> 
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <?php wp_head();?>  
		
	</head>
    
     <!--début header-->
     <body  <?php body_class($class); ?>>
     <?php do_action('after_body_open_tag');?>  

        
        <div class="header">
            <div class="container-fluid">
                <div class="row navigator">
                    <div class="col-lg-7 col-md-7 col-sm-6 ecole-solidaire">
                        <P class="para1">L'ECOLE  DES  SOLIDARITÉS</p>  
                        <p class="para2"> SANS-PAPIERS MAIS PAS SANS DROITS!</p>
                    </div>
                    <div class="col-lg-5 col-md-5 col-sm-6 flex">
                        <div>
                            <img src="<?php echo get_template_directory_uri(); ?>/images/Groupe-36.png" alt=""/>

                            
                        </div>
                        <div class="savoir">
                            <div>
                                <p>SAVOIR,</p>
                            </div>
                            <div>
                                <p>C'EST</p>
                            </div>
                            <div>
                                <p class="pouvoir">POUVOIR</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <nav class="nav-barre">
        <div class="container">
                <div class="col-12 menu">
                    <div class="left">
                    <?php wp_nav_menu(array(
                        'theme_location'    => 'header_menu',
                        'container'         => 'nav',
                        'menu_class'        => 'menu',
                        'container_class'   => 'main-navigation'   ,
                    )
                    );?>  
                    </nav>
					
                    </div>
                </div>
            </div>
            <div class="mobile-menu"></div>
				</div>
            </header> <!-- .site-header -->
