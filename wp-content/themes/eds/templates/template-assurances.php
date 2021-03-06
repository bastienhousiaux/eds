<?php
/**
 * Template Name: Assurances
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
                <h2>X.Assurances</h2>
                <div class="contenu-accordeon">
                    <div id="accordion">
                        <h3>10.1 C'est quoi une assurance? </h3>
                        <div>
                            <p>
                                Une assurance c'est un contrat que l'on souscrit auprès d'une compagnie d'assurance,
                                d'une mutuelle. La prime d'assurance alimente une caisse qui interviendra lorsque le
                                client est victime d'un dégât, d'un accident, …
                            </p>
                        </div>

                        <h3>10.2 Pour quoi a-t-on besoin d'une assurance?</h3>
                        <div>
                            <p>
                                Pour louer une maison, pour acheter une voiture, une maison, ...
                            </p>
                        </div>

                        <h3>10.3 Si une personne a cassé ma voiture, est-ce que l'assurance peut payer?</h3>
                        <div>
                            <p>
                                Dans cette situation, c'est la compagnie d'assurance de l'auteur de l'accident qui
                                interviendra.
                            </p>
                        </div>

                        <h3>10.4 Quels sont les types d'assurance qui existent? </h3>
                        <div>
                            <p>
                                Il y a les assurance "AUTO" ('assurance conducteur, l'assurance pour les tiers,
                                l'assurance omnium…), les assurances familiales, incendie, vol, hospitalisation,
                                pension, voyage, assistance, …
                            </p>
                        </div>

                        <h3>10.5 Si les délinquants sont mineurs, qui paye?</h3>
                        <div>
                            <p>
                                S'ils sont mineurs (moins de 18 ans), c'est aux parents et leur assurance de prendre en
                                charge les frais des dégâts causés par leur enfant mineur.
                            </p>
                        </div>

                        <h3>10.6 C'est quoi l'assurance omnium?</h3>
                        <div>
                            <p>
                                C'est un supplément que l'assuré paie sur son assurance auto pour être remboursé en cas
                                de sinistre même lorsqu'il est en tort.
                            </p>
                        </div>

                        <h3>10.7 Peut-on s'en passer des assurances? </h3>
                        <div>
                            <p>
                                Certaines assurances sont obligatoires (Auto, Incendie bâtiment). Les autres ne le sont
                                pas mais peuvent être bien utiles.
                            </p>
                        </div>

                        <h3>10.8 Comment augmente le prix de l'assurance? </h3>
                        <div>
                            <p>
                                La prime d'assurance augmente lorsque le conducteur est responsable d'un accident. Par
                                contre, si une tierce personne est responsable, l'assurance de la victime n'augmentera
                                pas .
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


  

