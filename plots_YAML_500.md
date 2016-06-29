# Comparison of Configurations I, II and III for YAML-500 data.

* **Configuration I**: description and keywords.
* **Configuration II**: all fields.
* **Configuration III**: weighted fields.


# Easy to interpret

## Ball_Hall
<img src="YAML_500_12measures_3metaconfigs/plot_Ball_Hall_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Ball_Hall_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Ball_Hall_conf3_clusterCrit_250csize.png" width="900">

* The mean, through all the clusters, of their mean dispersion.
* The range is [0,+∞).
* The difference between two successive slopes to be maximized.
* Best results: TT (wrt. optimal cluster number selection), LSA25 (wrt. global behavior: mean dispersion minimization), hca, conf II.

## C_Index
<img src="YAML_500_12measures_3metaconfigs/plot_C_index_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_C_index_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_C_index_conf3_clusterCrit_250csize.png" width="900">

* Shows for a given clustering its fraction of maximal possible increase over minimal distances which within-cluster distances between pairs of points have.
* The range is [0,1].
* To be minimized.
* Best results: TT or LSA25, hca, conf II.

## Calinski-Harabasz
<img src="YAML_500_12measures_3metaconfigs/plot_Calinski_Harabasz_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Calinski_Harabasz_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Calinski_Harabasz_conf3_clusterCrit_250csize.png" width="900">

* Is proportional to the quotient of the between-group dispersion and pooled within-cluster dispersion.
* The range is [0,+∞).
* To be maximized.
* Best results: LSA25, kmedoids (hca comparable from a certain cluster number size), conf II.

## McClain_Rao
<img src="YAML_500_12measures_3metaconfigs/plot_McClain_Rao_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_McClain_Rao_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_McClain_Rao_conf3_clusterCrit_250csize.png" width="900">

* Is the quotient of the mean within-cluster and between-cluster distance.
* The range is [0,+∞).
* To be minimized.
* Best results: LSA25, kmeans / kmedoids / hca comparable in LSA25 , conf I and II are similar.

## Ratkowsky_Lance
<img src="YAML_500_12measures_3metaconfigs/plot_Ratkowsky_Lance_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Ratkowsky_Lance_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Ratkowsky_Lance_conf3_clusterCrit_250csize.png" width="900">

* Is based on the mean of the quotients between between-group dispersion and TSS for each variable of the data.
* The range is [0,+∞).
* To be maximized.
* Best results: TT or LSA25, hca, conf I and II are similar.

## Trace_W
<img src="YAML_500_12measures_3metaconfigs/plot_Trace_W_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Trace_W_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Trace_W_conf3_clusterCrit_250csize.png" width="900">

* Is simply the pooled within-cluster dispersion.
* The range is [0,+∞).
* The difference between two successive slopes to be maximized.
* Best results: LSA/LSA25 (wrt. global behavior: pooled within-cluster dispersion AND wrt. optimal cluster number selection), hca, conf II.

## Wemmert_Gancarski
<img src="YAML_500_12measures_3metaconfigs/plot_Wemmert_Gancarski_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Wemmert_Gancarski_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Wemmert_Gancarski_conf3_clusterCrit_250csize.png" width="900">

* Is based on quotients of distances between the points and the barycenters of all the clusters.
* The range is [0,1].
* To be maximized.
* Best results: LSA25, kmean or kmedoids (hca comparable wrt. global behavior), conf II.

# Hard to interpret

## Davies-Bouldin
<img src="YAML_500_12measures_3metaconfigs/plot_Davies_Bouldin_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Davies_Bouldin_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Davies_Bouldin_conf3_clusterCrit_250csize.png" width="900">

* Deals with those clusters which are “close” in terms of their barycenters to each other but have very distant points within.
* The range is [0,+∞).
* To be minimized.
* Best results: LSA25, kmedoids / hca (hca shows more stable behavior in all models), conf II.

## Ray_Turi
<img src="YAML_500_12measures_3metaconfigs/plot_Ray_Turi_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Ray_Turi_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Ray_Turi_conf3_clusterCrit_250csize.png" width="900">

* Is a quotient between two quantities: the mean of the squared distances from all the points to the barycenter of their cluster 
and the minimum of the squared distances between the cluster barycenters.
* The range is [0,+∞).
* To be minimized.
* Best results: LSA25, hca, conf II.

## Xie_Beni
<img src="YAML_500_12measures_3metaconfigs/plot_Xie_Beni_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Xie_Beni_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Xie_Beni_conf3_clusterCrit_250csize.png" width="900">

* Is the quotient between the mean pooled within-cluster dispersion and the minimum of the minimal squared distances between the points in the clusters.
* The range is [0,+∞).
* To be minimized.
* Best results: BVSM (all models are very close in hca, i.p. LSA and BVSM), hca, conf II.

## Silhouette
<img src="YAML_500_12measures_3metaconfigs/plot_Silhouette_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Silhouette_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Silhouette_conf3_clusterCrit_250csize.png" width="900">

* Operates with quantities that only depend on the average distances between a given observation and other observations inside 
its own and also inside the nearest cluster.
* The range is [0,1].
* To be maximized.
* Best results: LSA25, hca, conf II (calculations will be redone later with another package)

## Dunn
<img src="YAML_500_12measures_3metaconfigs/plot_Dunn_conf1_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Dunn_conf2_clusterCrit_250csize.png" width="900">
<img src="YAML_500_12measures_3metaconfigs/plot_Dunn_conf3_clusterCrit_250csize.png" width="900">

* Deals with those clusters which contain the closest points belonging to different clusters and also with clusters that have very distant points within.
* The range is [0,+∞).
* To be maximized.
* Best results: BVSM (all models, i.p. BVSM and LSA are relatively close and also in a quite small range regarding the value range [0,+∞) ), hca, conf II.
