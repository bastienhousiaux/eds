<?php get_header()?>
    <?php if ( have_posts()):?>
    <?php
            //Start the loop
            while(have_posts()): the_post();
                /*
                *Include the post -Format-spectic template for the content
                *if you want to averride this in a child theme, then include a file
                *called content-___php (where___ is the post Fprmatname) and that will be used instead               */
            get_template_part('template-parts/content', get_post_format());  
                // End the loop
            endwhile;
            //Previous/next page navigation
            the_posts_pagination( array(
                'prev_text'         =>__('Previous page','eds'),
                'next_text'         =>__('next page', 'eds'),
                'before_page_number'=> '<span class="meta-nav 
                screen-reader-text">' . __('Page', 'eds').  '</span>' ,
            ) );

                //if no content, include the "no posts found" template
            else :
                    get_template_part('template-parts/content', 'none');
            endif;
            ?>


<?php get_footer()?>