<?php

/*
* @Author 		pickplugins
* Copyright: 	2015 pickplugins
*/

if ( ! defined('ABSPATH')) exit;  // if direct access





if(empty($_POST['accordions_hidden']))
{



}
else
{
	$nonce = $_POST['_wpnonce'];

	if(wp_verify_nonce( $nonce, 'accordions_import' ) && $_POST['accordions_hidden'] == 'Y') {





		?>

        <div class="updated"><p><strong><?php _e('Changes Saved.', 'accordions' ); ?></strong></p></div>
        <pre><?php echo var_export($_POST, true);?></pre>
		<?php
	}
}






?>



<div class="wrap">
	<h2><?php echo accordions_plugin_name ." ".__('Export/import','accordions');?>
    </h2>
    <br />

    <form  method="post" action="<?php echo str_replace( '%7E', '~', $_SERVER['REQUEST_URI']); ?>">
        <input type="hidden" name="accordions_hidden" value="Y">



    <div class="para-settings accordions-admin">
        <ul class="tab-nav"> 
            <li nav="1" class="nav1 active"><i class="fa fa-hand-o-right"></i> <?php _e('Export','accordions'); ?></li>
            <li nav="2" class="nav2"><i class="fa fa-hand-o-right"></i> <?php _e('Import','accordions'); ?></li>

        </ul> <!-- tab-nav end -->  
        
		<ul class="box">
        
            <li style="display: block;" class="box1 tab-box active">


                
                
                <div class="option-box">
                    <p class="option-title"><?php _e('Export','accordions'); ?></p>
                    <p class="option-info"></p>

                    <?php


                    $meta_fields = array(
	                    'accordions_collapsible',
	                    'accordions_expaned_other',
	                    'accordions_heightStyle',
	                    'accordions_active_accordion',
	                    'accordions_click_scroll_top',
	                    'accordions_header_toggle',
	                    'accordions_click_scroll_top_offset',
	                    'accordions_active_event',
	                    'accordions_lazy_load',
	                    'accordions_lazy_load_src',
	                    'accordions_animate_style',
	                    'accordions_animate_delay',
	                    'accordions_hide_edit',
	                    'accordions_expand_collapse_display',
	                    'accordions_child',
	                    'accordions_container_padding',
	                    'accordions_container_bg_color',
	                    'accordions_container_text_align',
	                    'accordions_bg_img',
	                    'accordions_themes',
	                    'accordions_icons_plus',
	                    'accordions_icons_minus',
	                    'accordions_section_icon_plus',
	                    'accordions_section_icon_minus',
	                    'accordions_icons_color',
	                    'accordions_icons_color_hover',
	                    'accordions_icons_font_size',
	                    'accordions_icons_position',
	                    'accordions_default_bg_color',
	                    'accordions_active_bg_color',
	                    'accordions_header_bg_opacity',
	                    'accordions_bg_color',
	                    'accordions_header_bg_img',
	                    'accordions_items_title_color',
	                    'accordions_items_title_color_hover',
	                    'accordions_items_title_font_family',
	                    'accordions_items_title_font_size',
	                    'accordions_items_title_margin',
	                    'accordions_items_title_padding',
	                    'accordions_items_content_color',
	                    'accordions_items_content_font_family',
	                    'accordions_items_content_font_size',
	                    'accordions_items_content_bg_color',
	                    'accordions_items_content_bg_opacity',
	                    'accordions_items_content_padding',
	                    'accordions_items_content_margin',
	                    'accordions_content_title',
	                    'accordions_content_title_toogled',
	                    'accordions_content_body',
	                    'accordions_hide',
	                    'accordions_custom_css',
	                    'accordions_tabs_collapsible',
	                    'accordions_tabs_active_event',
	                    'accordions_tabs_vertical',
	                    'accordions_tabs_icon_toggle',
	                    'accordions_click_track',
	                    'track_header',
                    );


                    $wp_query = new WP_Query( array (
	                    'post_type' => 'accordions',
	                    'post_status' => 'publish',

                    ));

                    if ( $wp_query->have_posts() ) :
	                    while ( $wp_query->have_posts() ) : $wp_query->the_post();
		                    foreach($meta_fields as $field){
			                    $fields_data[$field] = get_post_meta(get_the_ID(),$field, true);
		                    }

		                    $post_data_exported[get_the_ID()] = array(
			                    'title'=>get_the_title(),
			                    'meta_fields'=>$fields_data,
		                    );


	                    endwhile;
	                    wp_reset_query();
                    else:

	                    echo __('Not  found');

                    endif;

                    $post_data_exported_json = json_encode($post_data_exported);


                    ?>

                    <pre><?php //echo var_export($post_data_exported_json, true);?></pre>


                    <pre><?php //echo var_export(json_decode($post_data_exported_json), true);?></pre>


                    <?php

//                    $upload_dir = wp_upload_dir();
//                    $basedir = $upload_dir['basedir'];
//                    $baseurl = $upload_dir['baseurl'];
//                    $export_layout_content_dir = $basedir.'/accordions';
//
//                    if ( ! file_exists( $export_layout_content_dir ) ) {
//	                    wp_mkdir_p( $export_layout_content_dir );
//                    }
//
//
//                    $layout_content_file = fopen($export_layout_content_dir."/export-".date('Y-m-d-h').'-'.time().".txt", "w");
//
//
//                    fwrite($layout_content_file, $post_data_exported_json);
//
//                    $file_url = $baseurl."/accordions/export-".date('Y-m-d-h').'-'.time().".txt";
//                    $file_dir = $basedir."/accordions/export-".date('Y-m-d-h').'-'.time().".txt";
//                    //$file_url = post_grid_plugin_url."export/export-layout-content-".date('Y-m-d-h').'-'.time().".txt";
//
//                    echo $file_url;
//                    echo '<br/>';
//                    //echo $file_dir;
//
//
//                    fclose($layout_content_file);

                    ?>

                    <br>
                    <textarea style="width: 80%" id="text-val" rows="4"><?php echo $post_data_exported_json; ?></textarea><br/><br>
                    <input type="button" class="button" id="dwn-btn" value="Download json"/>

                    <script>
                        function download(filename, text) {
                            var element = document.createElement('a');
                            element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
                            element.setAttribute('download', filename);

                            element.style.display = 'none';
                            document.body.appendChild(element);

                            element.click();

                            document.body.removeChild(element);
                        }

                        // Start file download.
                        document.getElementById("dwn-btn").addEventListener("click", function(){
                            // Generate download of hello.txt file with some content
                            var text = document.getElementById("text-val").value;
                            var filename = "<?php echo date('Y-m-d-h').'-'.time(); ?>.txt";

                            download(filename, text);
                        }, false);
                    </script>



                </div>
                
                

                


                
            </li>
            <li style="display: none;" class="box2 tab-box">

                <div class="option-box">
                    <p class="option-title"><?php _e('Import','accordions'); ?></p>
                    <p class="option-info"></p>

                    <input placeholder="json file url" type="text" class="json_file" name="json_file" value="">
                    <div class="import-json button">Import</div>
                </div>


            </li>
    
    </div>

    </form>
</div> <!-- wrap end -->