# NbClust for YAML-500 (2-250 clusters)

## Ball_Hall
<img src="NbClust_250/plot_ball_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_ball_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_ball_conf3_NbClust_250csize.png" width="900">

* The mean, through all the clusters, of their mean dispersion.
* The range is [0,+∞).
* The difference between two successive slopes to be maximized.

## C_Index
<img src="NbClust_250/plot_cindex_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_cindex_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_cindex_conf3_NbClust_250csize.png" width="900">

* Shows for a given clustering its fraction of maximal possible increase over minimal distances which within-cluster distances between pairs of points have.
* The range is [0,1].
* To be minimized.

## Calinski-Harabasz
<img src="NbClust_250/plot_ch_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_ch_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_ch_conf3_NbClust_250csize.png" width="900">

* Is proportional to the quotient of the between-group dispersion and pooled within-cluster dispersion.
* The range is [0,+∞).
* To be maximized.

## McClain_Rao
<img src="NbClust_250/plot_mcclain_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_mcclain_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_mcclain_conf3_NbClust_250csize.png" width="900">

* Is the quotient of the mean within-cluster and between-cluster distance.
* The range is [0,+∞).
* To be minimized.

## Ratkowsky_Lance
<img src="NbClust_250/plot_ratkowsky_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_ratkowsky_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_ratkowsky_conf3_NbClust_250csize.png" width="900">

* Is based on the mean of the quotients between between-group dispersion and TSS for each variable of the data.
* The range is [0,+∞).
* To be maximized.

## Davies-Bouldin
<img src="NbClust_250/plot_db_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_db_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_db_conf3_NbClust_250csize.png" width="900">

* Deals with those clusters which are “close” in terms of their barycenters to each other but have very distant points within.
* The range is [0,+∞).
* To be minimized.

## Silhouette
<img src="NbClust_250/plot_silhouette_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_silhouette_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_silhouette_conf3_NbClust_250csize.png" width="900">

* Operates with quantities that only depend on the average distances between a given observation and other observations inside 
its own and also inside the nearest cluster.
* The range is [0,1].
* To be maximized.

## Dunn
<img src="NbClust_250/plot_dunn_conf1_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_dunn_conf2_NbClust_250csize.png" width="900">
<img src="NbClust_250/plot_dunn_conf3_NbClust_250csize.png" width="900">

* Deals with those clusters which contain the closest points belonging to different clusters and also with clusters that have very distant points within.
* The range is [0,+∞).
* To be maximized.
