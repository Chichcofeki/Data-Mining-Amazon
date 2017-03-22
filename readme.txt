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
5. Dans le même esprit que le travail réalisé en cours et en ré-utilisant les fichiers que vous estimerez nécessaires, construire, pour chaque fichier, un data frame D dont 


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
