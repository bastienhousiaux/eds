<?php
/**
 * Template Name: Regroupement Familial
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
                <h2>I.Regroupement familial</h2>
                <div class="contenu-accordeon">


                    <div id="accordion">

                        <h3>1.1 Qu’est ce qu’un regroupement familial ?</h3>
                        <div>
                            <p>
                                ll s'agit de faire venir dans le pays d'accueil un membre de sa famille, il doit s'agir
                                d'un enfant,du mari ou de l'épouse (frère et soeur : ce n'est pas possible)• Un
                                regroupement familial sous entend une prise en charge (plus de CPAS etc.) C’est la
                                personne avec qui vous allez vivre qui va vous entretenir. Maintenant il n’est plus
                                possible de se marier avec quelqu'un au CPAS, il faut que la personne se marie avec
                                quelqu’un qui travaille avec un salaire de 120% du RIS et qui a un logement adapté à la
                                situation familiale.
                            </p>
                        </div>

                        <h3>1.2 Quelles sont les formalités de mariage ?</h3>
                        <div>
                            <p>
                                MARIAGE :Il faut un acte de naissance,un acte d'état civil (célibat/divorce/veuvage)
                                Les papiers demandés sont payants à la commune.
                                Quand tu es reconnu réfugié, il faut s’adresser au CGRA.Quand tu es demandeur d'asile,
                                il faut s'adresser à son pays d'origine ou à l' ambassade en Belgique.
                                Si mariage hors UE, il faut que le document soit légalisé au poste diplomatique belge
                                ds le pays d'origine et retranscrit en Belgique suivant le pays .
                            </p>
                        </div>

                        <h3>1.3 Comment effectuer un regroupement familial ? </h3>
                        <div>
                            <p> Par le mariage ou contrat de cohabitation légale</p>
                            <ul>
                                <li>On peut devenir belge après 5 ans de mariage retranscrit en Belgique, il faut alors
                                    introduire 1 demande à la commune.Certaines conditions sont nécessaire (revenus
                                    suffisants, domicile adapté à la famille,...)
                                    Les enfants de moins de 18 ans</li>
                                <li>Les plus de 18 ans (handicapés ou non) moyennant de prouver son indigence dans le
                                    pays d'origine et être prise en charge par le demandeur (ils ne seront pas pris en
                                    charge par le CPAS et ne toucheront pas de revenu d'insertion).</li>
                                <li>1 Test ADN des deux côtés.peut être demandé par l'office des étrangers.</li>
                            </ul>
                        </div>

                        <h3>1.4 Comment faire pour rapatrier un corps dans le pays d'origine? </h3>
                        <div>
                            <p>

                            </p>
                        </div>

                        <h3>1.5 Quand il y a un décès comment faire pour prouver ma filiation?</h3>
                        <div>
                            <p>
                                Il faut un acte de naissance et deux témoins qui puissent attester que c’est bien mon
                                père en plus du livret de famille, du carnet de mariage
                            </p>
                        </div>


                        <h3>1.6 Au niveau de l’adoption ?</h3>
                        <div>
                            <p>
                                Pour un enfant majeur :
                                Il faut l’accord des membres de la famille de « l’adoptant » (ascendants, descendnts et
                                collatéraux, surtout pour des questions d'héritage))
                                Pour un enfant mineur :
                                Il faut passer par un service d'adoption qui renseignera les pays acceptant l'adoption
                                de ses ressortissants.
                            </p>
                        </div>

                        <h3>1.7 C'est quoi une famille mono-parentale?</h3>
                        <div>
                            <p>
                                C'est un parent qui élève seul ses enfants
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


  

