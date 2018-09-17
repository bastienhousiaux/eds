<?php get_header()?>
<?php while (have_posts()) : the_post();?>

<h1><?php the_title();?></h1>	


mes évènements

<?php the_content();?>


    
    <?php endwhile;?>
<?php get_footer()?>