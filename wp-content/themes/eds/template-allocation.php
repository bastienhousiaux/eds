<?php
/*
Template Name: Allocation
*/
?>

<?php get_header()?>
<?php while (have_posts()) : the_post();?>

	


<div class="container">
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
                <h2>III.Allocation</h2>
                <div class="contenu-accordeon">
                        <div id="accordion">
                    <h3>3.1 Est-ce que les couples ont des taxes à payer en Belgique ? </h3>
                    <div>
                        <p>
                            Toutes les personnes qui ont des revenus paient des taxes (impôts sur les revenus, taxe
                            urbaine, taxes communales, provinciales, …)
                        </p>
                    </div>

                    <h3>3.2 D’où vient l’argent qu’on me donne ? </h3>
                    <div>
                        <p>
                            En fonction de mon statut (demandeur d'asile en centres croix-rouge ou bénéficiaires du
                            CPAS, réfugié, travailleur, chômeur, invalide, malade, handicapé, …), différents services
                            ou caisses vont payer.
                        </p>
                    </div>

                    <h3>3.3 Peut-on retirer un statut ?</h3>
                    <div>
                        <p>
                            oui, si une personne (réfugiée ou bénéficiant de la protection subsidiaire ou ayant obtenu
                            une régularisation ou un regroupement familial) ne répond plus aux conditions.
                        </p>
                    </div>

                    <h3>3.4 Comment fonctionne la sécurité sociale ONSS?</h3>
                    <div>
                        <p>
                            Il y a les travailleurs, les employeurs et l'état. Tous mettent de l'argent pour les
                            caisses de la sécurité sociale. Cet argent est distribué entre les personnes malades, les
                            personnes âgées, les chômeurs, les allocations familiales, les maladies professionnelles,
                            les accidents du travail et les congés payés. Il faut donc qu’il y ait un équilibre entre
                            le nombre de personnes àqui alimentent les caisses de la sécurité sociale et ceux qui en
                            bénéficient.
                        </p>
                    </div>

                   
                <button id="toggle">Toggle icons</button>


            </div>
            <!--Fin contenu Accordeon-->

        </div><!-- FIn Contenu  ici-->


    </div>
    <!--Fin row numero 1-->
    </div>
    <!--Fin container Contenu FAQ-->




    
    <?php endwhile;?>
<?php get_footer()?>