# NbClust for YAML-500 (2-20 clusters)

## Ball_Hall
<img src="NbClust/ball_1.png" width="400">
<img src="NbClust/ball_2.png" width="400">

* The mean, through all the clusters, of their mean dispersion.
* The range is [0,+∞).
* The difference between two successive slopes to be maximized.

## C_Index
<img src="NbClust/c_1.png" width="400">
<img src="NbClust/c_2.png" width="400">

* Shows for a given clustering its fraction of maximal possible increase over minimal distances which within-cluster distances between pairs of points have.
* The range is [0,1].
* To be minimized.

## Calinski-Harabasz
<img src="NbClust/ch_1.png" width="400">
<img src="NbClust/ch_2.png" width="400">

* Is proportional to the quotient of the between-group dispersion and pooled within-cluster dispersion.
* The range is [0,+∞).
* To be maximized.

## McClain_Rao
<img src="NbClust/mc_1.png" width="400">
<img src="NbClust/mc_2.png" width="400">

* Is the quotient of the mean within-cluster and between-cluster distance.
* The range is [0,+∞).
* To be minimized.

## Ratkowsky_Lance
<img src="NbClust/rat_1.png" width="400">
<img src="NbClust/rat_2.png" width="400">

* Is based on the mean of the quotients between between-group dispersion and TSS for each variable of the data.
* The range is [0,+∞).
* To be maximized.

## Davies-Bouldin
<img src="NbClust/db_1.png" width="400">
<img src="NbClust/db_2.png" width="400">

* Deals with those clusters which are “close” in terms of their barycenters to each other but have very distant points within.
* The range is [0,+∞).
* To be minimized.

## Silhouette
<img src="NbClust/sil_1.png" width="400">
<img src="NbClust/sil_2.png" width="400">

* Operates with quantities that only depend on the average distances between a given observation and other observations inside 
its own and also inside the nearest cluster.
* The range is [0,1].
* To be maximized.

## Dunn
<img src="NbClust/dunn_1.png" width="400">
<img src="NbClust/dunn_2.png" width="400">

* Deals with those clusters which contain the closest points belonging to different clusters and also with clusters that have very distant points within.
* The range is [0,+∞).
* To be maximized.
