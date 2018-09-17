<?php
/**
 * Template Name: Devoirs et Droits
 */
?>
<?php get_header()?>
<?php while (have_posts()) : the_post();?>


    <!--Entrée body avec les liens des différentes pages FAQ-->

    <div class="container">
        <!--Contenu FAQ avec liens ul sous forme de barre de menu latéral qui renvoit à chacune des pages respectives-->
        <div class="row">
            <!--Row barre de menu-->

            <div class="col-lg-3 col-sm-12">
                <div>
                    <!--Début ul-->
                    <div class="Title">
                        <h1>Les Différentes Questions Fréquentes : FAQ</h1>
                    </div>
                    <ul>
                        <li>
                            <h3><a href="regroupement_familial.html">I.Regroupement familial</a></h3>
                        </li>
                        <li>
                            <h3><a href="emploi.html">II.Emploi</a></h3>
                        </li>
                        <li>
                            <h3><a href="allocation.html">III.Allocation</a></h3>
                        </li>
                        <li>
                            <h3><a href="logement.html">IV.Logement</a></h3>
                        </li>
                        <li>
                            <h3><a href="culture.html">V.Culture du pays</a></h3>
                        </li>
                        <li>
                            <h3><a href="actualite.html">VI.Actualité</a></h3>
                        </li>
                        <li>
                            <h3><a href="partis_politique.html">VII.Les partis politiques</a></h3>
                        </li>
                        <li>
                            <h3><a href="paysageinstitutionnel.html">VIII.Paysage institutionnel</a></h3>
                        </li>
                        <li>
                            <h3><a href="association.html">IX.Associations</a></h3>
                        </li>
                        <li>
                            <h3><a href="assurances.html">X.Assurances</a></h3>
                        </li>
                        <li>
                            <h3><a href="devoirs_droits.html">XI.Devoirs/droits</a></h3>
                        </li>
                        <li>
                            <h3><a href="union_europeenne.html">XII.L'union européennne</a></h3>
                        </li>
                        <li>
                            <h3><a href="economie.html">XIII.Economie</a></h3>
                        </li>
                        <li>
                            <h3><a href="procedure_asile.html">XIV.Procédure d'asile</a></h3>
                        </li>
                        <li>
                            <h3><a href="cpas.html">CPAS</a></h3>
                        </li>
                    </ul>

                </div>
                <!--Fin div ul-->

            </div>
            <div class="col-lg-9 col-sm-12">
                <!--Contenu de la page commence ici-->
                <h2>XI.Devoirs/droits</h2>
                <div class="contenu-accordeon">
                    <div id="accordion">
                        <h3>11.1 Que se passe-t-il lorsqu'on va en prison?</h3>
                        <div>
                            <p>
                                La personne qui est incarcérée en "Préventive" est, selon la loi, présumée innocente
                                jusqu'à son jugement. Toutefois, une fois jugée, elle perd ses revenus.
                            </p>
                        </div>

                        <h3></h3>
                        <div>
                            <p>

                            </p>
                        </div>

                        <h3> </h3>
                        <div>
                            <p>

                            </p>
                        </div>

                        <h3> </h3>
                        <div>
                            <p>

                            </p>
                        </div>


                    </div>

                    <button id="toggle">Toggle icons</button>


                </div>
                <!--Fin contenu Accordeon-->

            </div><!-- FIn Contenu de la page commence ici-->


        </div>
        <!--Fin row numero 1-->
    </div>
    <!--Fin container Contenu FAQ-->

 
 <?php endwhile;?>
<?php get_footer()?>


  

