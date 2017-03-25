# on ne pourra pas faire une matrice de confusion 
# car il faut fournir la colonne des vrai sentiment du commentaire a la main.
# genre sa nous fait 374 observation a vérifier si la prédiction est bonne ou pas
# on pourra dire que c'est chiant a faire, mais en vérité c'est vite fait.
# il faut ne pas oublier de sauvegarder le fichier de données au lieux de l'original
conf.matrix <- table(prediction, data[,4], dnn=list('predicted','actual'))

# du coup on ne pourra pas rajouter la partie ou on peut founir un autre fichier text
# sur l'application a moins qu'on ne fait pas la partie du sentiment analysis 
# car sa demande de savoir la colonne des vrai sentiments des "commentaires" 

#====================TRAVAIL DEMANDE====================================

#1/Traitement et nettoyage des trois fichiers grâce à la librarie « tm ».

#2/Faire ressortir grâce à un histogramme les mots les plus fréquents dans 
# les avis exprimés dans les trois fichiers.

#3/Mettre en évidence une éventuelle similarité ou dissimilarité entre les mots utilisés
# dans les avis exprimés dans les trois fichiers.

#4/Utilisation de la librarie « wordCloud » pour faire ressortir les mots les plus importants.

#5/Dans le même esprit que le travail réalisé en cours et en ré-utilisant les fichiers que 
# vous estimerez nécessaires, construire, pour chaque fichier, un data frame D dont 
# chaque ligne correspond à un avis, le score pour les mots négatif, le score pour les mots positifs, 
# ainsi que le sentiment général lié à l'avis (positif ou négatif).

#6/Partager ce data frame de façon à obtenir les 70 % pour l'apprentissage et les 30 % pour le test.
# Une procédure possible est la suivante :
#  Echantillonage qui associe à 70% des éléments de l'ensemble l'indice 1 et à 30% l'indice
#  La procédure suivante nous permet d'associer, au hasard, l'indice 1 à 70 % des éléments de D et l'indice 2 à 30 % des éléments de D
#  indice = sample(2,length(D), replace=TRUE, prob=c(0.7,0.3))
#  Tous les éléments auxquels ont a associé l'indice 1 constituent l'ensemble d'apprentissage
#  ensemble_apprentissage=D[indice==1,] 
#  Tous les éléments auxquels ont a associé l'indice 2 constituent l'ensemble de
#  ensemble_test=D[indice==2,]

#7/Utilisez l'algorithme Naïve Bayes pour trouver le modèle de classification pour D. Vous pouvez aussi utiliser d'autres algorithmes 
# de classification appris pendant le cours de data mining et comparer les différents résultats obtenus.

#8/Que proposeriez vous pour améliorer ces résultats ?

#9/Ecriture du rapport et de la présentation.

#10/Soutenance orale.

#====================TRAVAIL DEMANDE====================================



#Il faut installer le package pracma
#install.packages("pracma")
library(pracma)


# il faut faire un setworkdirectoy ( setwd() ) 
#sinon il ne saura pas ramener les script R

source('libraries.R')
source('sentiment.R')

data <- total.results

# data1=data[1:(nrow(data)*0.9),]
# data2=data[nrow(data1):nrow(data),]

ind=sample(2, nrow(data),replace = T, prob=c(0.7,0.3))
data1=data[ind==1,]
data2=data[ind==2,]

(prediction <- predict(NaiveBayesClassifier, data2))

