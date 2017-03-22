Projet fin cours : analyse de textes et du sentiment avec R 
Analyse du sentiment sur les avis des internautes (consomateurs d'Amazon, avis sur films (IMDb), et sur les entreprises (Yelp))
Les rapports rendus après le 27/03/2017 ne seront pas corrigés. OB JECTIF DE L'ETUDE 
Ce projet a deux objectifs : faire ressortir les mots les plus utilisés dans les avis exprimés dans chacun des trois fichiers et apprendre grâce à ces avis, les sentiments (positifs et négatifs) exprimés. 
INFORMATIONS IMPORTANTES : 
1. Un fichier README.txt avec la description des données vous est fourni. 
2. Un fichier amazon_cells_labelled.txt avec les avis positifs (1) et négatifs (0) sur les consomateurs d'Amazon. 
3. Un fichier imdb_labelled.txt avec les avis positifs (1) et négatifs (0) sur les films considérés dans IMDb. 
4. Un fichier yelp_labelled.txt avec les avis positifs (1) et négatifs (0) sur les entreprises considérées dans Yelp. 
DONNEES DISPONIBLES : les données à utiliser sont disponibles sur haps://archive. ic s.uci .edu/ml/datasets/Sentiment+Labelled+Sentences# TRAVAIL DEMANDE (toutes les étapes doivent être systématiquement décrites, illustrées et justifiées dans le rapport à rendre le 27/03/2017) : 
1. Traitement et nettoyage des trois fichiers grâce à la librarie « tm ».
2. Faire ressortir grâce à un histogramme les mots les plus fréquents dans les avis exprimés dans les trois fichiers. 
3. Mettre en évidence une éventuelle similarité ou dissimilarité entre les mots utilisés dans les avis exprimés dans les trois fichiers. 
4. Utilisation de la librarie « wordCloud » pour faire ressortir les mots les plus importants. 
5. Dans le même esprit que le travail réalisé en cours et en ré-utilisant les fichiers que vous estimerez nécessaires, construire, pour chaque fichier, un data frame D dont chaque ligne correspond à un avis, le score pour les mots négatif, le score pour les mots positifs, ainsi que le sentiment général lié à l'avis (positif ou négatif). 
6. Partager ce data frame de façon à obtenir les 70 % pour l'apprentissage et les 30 % pour le test. Une procédure possible est la suivante : 
# Echantillonage qui associe à 70% des éléments de l'ensemble l'indice 1 et à 30% l'indice 2. La procédure suivante nous permet d'associer, au hasard, l'indice 1 à 70 % des éléments de D et l'indice 2 à 30 % des éléments de D 
indice = sample(2,length(D), replace=TRUE, prob=c(0.7,0.3)) # Tous les éléments auxquels ont a associé l'indice 1 constituent l'ensemble d'apprentissage ensemble_apprentissage=D[indice==1,] # Tous les éléments auxquels ont a associé l'indice 2 constituent l'ensemble de ensemble_test=D[indice==2,] 
7. Utilisez l'algorithme Naïve Bayes pour trouver le modèle de classification pour D. Vous pouvez aussi utiliser d'autres algorithmes de classification appris pendant le cours de data mining et comparer les différents résultats obtenus. 
8. Que proposeriez vous pour améliorer ces résultats ? 
9. Ecriture du rapport et de la présentation. 
10. Soutenance orale. 
 


This dataset was created for the Paper 'From Group to Individual Labels using Deep Features', Kotzias et. al,. KDD 2015
Please cite the paper if you want to use it :)

It contains sentences labelled with positive or negative sentiment, extracted from reviews of products, movies, and restaurants

=======
Format:
=======
sentence \t score \n


=======
Details:
=======
Score is either 1 (for positive) or 0 (for negative)	
The sentences come from three different websites/fields:

imdb.com
amazon.com
yelp.com

For each website, there exist 500 positive and 500 negative sentences. Those were selected randomly for larger datasets of reviews. 
We attempted to select sentences that have a clearly positive or negative connotaton, the goal was for no neutral sentences to be selected.



For the full datasets look:

imdb: Maas et. al., 2011 'Learning word vectors for sentiment analysis'
amazon: McAuley et. al., 2013 'Hidden factors and hidden topics: Understanding rating dimensions with review text'
yelp: Yelp dataset challenge http://www.yelp.com/dataset_challenge
