<?php
//activer init pour le réglagage des header er footer

add_action('init','on_eds_init');

function on_eds_init()
{
    register_nav_menu('header_menu','Header Menu');
    register_nav_menu('faq_menu','FAQ Menu');

}


register_taxonomy( 'media_category' , 'attachment', $args );
	/* ce if pour rajouter la partie option de page*/ 
	if( function_exists('acf_add_options_page') ) {

		acf_add_options_page(array(
		'page_title' => 'Theme General Settings',
		'menu_title' => 'Theme Settings',
		'menu_slug' => 'theme-general-settings',
		'capability' => 'edit_posts',
		'redirect' => false
		));
	   
		acf_add_options_sub_page(array(
		'page_title' => 'Theme Header Settings',
		'menu_title' => 'Header',
		'parent_slug' => 'theme-general-settings',
		));
	   
		acf_add_options_sub_page(array(
		'page_title' => 'Theme Footer Settings',
		'menu_title' => 'Footer',
		'parent_slug' => 'theme-general-settings',
		));
	}


add_action('wp_nav_menu','eds_menu_responsive',3,2);

function eds_menu_responsive($menu, $args)
{
    if('header_menu'== $args->theme_location)
    {
        $button = '<button type ="button" class ="toggle-menu">
        <i class = "fa fa-bars"></i></button>';
        $menu = preg_replace('/(<nav(.*?)>)/','${1}'.$button,$menu);

	}
    return $menu;
}


/**
 *  wordpress met en apllication eds_styles_scripts quand il est 
 * enrégisté par wp_register_style et exécuté par wp_enqueue
 */
add_action('wp_enqueue_scripts', 'eds_styles_scripts');

function eds_styles_scripts()
{
    wp_register_style('eds-style', get_template_directory_uri().'/style.css',array(),"1.1");
    wp_enqueue_style('eds-style');

  
    wp_register_style('eds-bootstrap', get_template_directory_uri().'/css/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('eds-bootstrap');
    wp_register_style("fontawesome",get_template_directory_uri()."/fonts/font-awesome.min.css");
    wp_enqueue_style('fontawesome');

    wp_register_style("eds-jqueryui","http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css");
    wp_enqueue_style('eds-jqueryui');

    wp_register_script('spa_test', get_template_directory_uri().'/js/spa_test.js', "2.5.17",array('jquery',"jquery-ui-core","jquery-ui-accordion","jquery-ui-button"));
    wp_enqueue_script('spa_test');

    if(is_page_template("templates/template-faq.php"))
    {
        wp_register_script('vue', get_template_directory_uri().'/js/vue/vue.js', "2.5.17");
        wp_enqueue_script('vue');
        wp_register_script('eds-accordion', get_template_directory_uri().'/js/faq_accordion_script.js', array('jquery',"jquery-ui-core","jquery-ui-accordion","jquery-ui-button"), "1.2");
        wp_enqueue_script('eds-accordion');
    }
   

    /*
    wp_register_script('eds-plugins', get_template_directory_uri().'/js/plugins.js', array('jquery'), "1.1");
    wp_register_script('eds-app', get_template_directory_uri().'/js/app.js', array('jquery','eds-plugins'));

    wp_enqueue_script('eds-plugins');
    wp_enqueue_script('eds -app');

    wp_register_script('ie-support-html5','js/ie-support/html5.js');
    wp_register_script('ie-support-respond', 'js/ie-support/respond.js');

    wp_enqueue_script('ie-support-html5');
    wp_enqueue_script('ie-support-respond');

    wp_script_add_data('ie-support-html5', 'conditional', 'it IE 9');
    wp_script_add_data('ie-support-respond', 'conditional', 'it IE 9');
   */


}

// ici on change le titre du projet dans la barre des adresses  url
add_theme_support('title-tag');

add_theme_support('post-thumbnails');

