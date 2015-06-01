\name{stringgaussnet-package}
\alias{stringgaussnet-package}
\alias{stringgaussnet}
\docType{package}
\title{
\packageTitle{stringgaussnet}
}
\description{
\packageDescription{stringgaussnet}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{stringgaussnet}
\packageIndices{stringgaussnet}
Genome-wide transcriptomic arrays are, from some years, a standard method to identify differentially expressed (DE) genes affected by an observed phenotype. Several statistical analysis methods are now well defined to generate those DE gene lists. The graph theory can be very useful to prioritize key DE genes, and consists in linking genes (nodes) by different interactions (edges). Gene network analyses have already given very interesting results in the literature. There are mainly two kinds of gene networks: semantic networks are based on already known interactions from literature, and gaussian networks are constructed by existing correlations in expression between genes. We propose stringgaussnet, an R package that allows to construct, easily and with much flexibility, those two kinds of networks after DE genes analysis.
}
\author{
\packageAuthor{stringgaussnet}

Maintainer: \packageMaintainer{stringgaussnet}
}
\keyword{ package }
\examples{
## Please note that for constructing STRINGNet objects, an internet connexion is necessary.
## Some lines are commented out for less computation time or Cytoscape dependency. But all are
##executable if all required conditions are filled (see package dependencies and suggests).

#data(SpADataExpression) # Import example expression data
#data(SpADEGenes) # Import example DE genes analysis results
#data(SpASamples) # Import example sample description
#SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes) # Create an object of class DEGeneExpr with
##expression data and DE genes analysis results. This object class is the basis for all functions
##in the package.

#StatusFactor<-paste(SpASamples$status,SpASamples$b27,sep=".") # Create a factor based on the
##status
#TimeFactor<-as.character(SpASamples$LPStime) # Create a factor based on LPS stimulation time
#names(StatusFactor)=names(TimeFactor)=SpASamples$chipnum # Attribute sample names to factors

#STRINGSpAData<-DEGeneExpr(t(SpADataExpression[30:60,]),SpADEGenes[30:60,]) # We subset the
##DEGeneExpr object for faster computation in the example
#SpASTRINGNet<-getSTRINGNet(STRINGSpAData) # Construct a STRING network through the API
## If you wish to add gene annotations (can take a while):
##SpASTRINGNet<-getSTRINGNet(STRINGSpAData,AddAnnotations=TRUE)
#print(SpASTRINGNet,5) # We print the STRINGNet object
#summary(SpASTRINGNet) # We summarize the STRINGNet object
## If you wish to export the STRINGNet object:
##export(SpASTRINGNet,"SpASTRINGNet",T)
#PPISpASTRINGNet<-selectInteractionTypes(SpASTRINGNet,c("coexpression","experimental","knowledge")
#	,0.9) # We select specific interaction sources, by filtering on confidence scores
#print(PPISpASTRINGNet,5)# We can see that the number of interactions decreases
#summary(PPISpASTRINGNet) # We can see that the minimum score is 0.9
## If you wish to export the PPI STRINGNet object:
##export(PPISpASTRINGNet,"PPISpASTRINGNet",T)

#shortPathSpANet<-getShortestPaths(PPISpASTRINGNet) # We compute shortest paths between initial
##nodes
#shortPathSpANet<-FilterEdges(shortPathSpANet,5) # We filter edges on the distance
#print(shortPathSpANet,5) # We print the ShortPathSTRINGNetobject
#summary(shortPathSpANet) # We summarize the ShortPathSTRINGNetobject
## If you wish to export the ShortPathSTRINGNetobject:
##export(shortPathSpANet,"shortPathSpANet",T)

#NodesForSIMoNe<-rownames(SpADEGenes)[1:17] # We select a reasonable number of genes for SIMoNe
##network inference
#GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])
## We create the DEGeneExpr object for the gaussian networks inference

## If you wish to have help for choosing parameters in SIMoNe network inference:
##pickSIMoNeParam(GaussianSpAData)
#GlobalSIMoNeNetNF<-getSIMoNeNet(GaussianSpAData) # We infer SIMoNe network with default parameters
## If you wish to add gene annotations (can take a while):
##GlobalSIMoNeNetNF<-getSIMoNeNet(GaussianSpAData,AddAnnotations=TRUE)
#GlobalSIMoNeNet<-FilterEdges(GlobalSIMoNeNetNF,0.4) # We filter edges on absolute values of
##spearman's rho
#print(GlobalSIMoNeNet,5) # We print the SIMoNeNet object
#summary(GlobalSIMoNeNet) # We summarize the SIMoNeNet object
#plot(GlobalSIMoNeNet) # We plot the SIMoNeNet object
##dev.off() # We close the used device for plot
## We can plot the highest positive correlation between two DE genes:
##plot(GaussianSpAData$DataExpression[,"NUDT3"]~
##	GaussianSpAData$DataExpression[,"P2RX1"],xlab="P2RX1",ylab="NUDT3")
## If you wish to export the SIMoNeNet object:
##export(GlobalSIMoNeNet,"GlobalSIMoNeNet",T)

## If you wish to have help for choosing parameters in WGCNAnetwork inference:
##pickWGCNAParam(GaussianSpAData)
#GlobalWGCNANet<-getWGCNANet(GaussianSpAData) # We infer WGCNA network with default parameters
## If you wish to add gene annotations (can take a while):
##GlobalWGCNANet<-getWGCNANet(GaussianSpAData,AddAnnotations=TRUE)
#print(GlobalWGCNANet,5) # We print the WGCNANet object
#summary(GlobalWGCNANet) # We summarize the WGCNANet object
#plot(GlobalWGCNANet) # We plot the WGCNANet object
##dev.off() # We close the used device for plot
## If you wish to export the WGCNANet object:
##export(GlobalWGCNANet,"GlobalWGCNANet",T)

## If you wish to compare SIMoNe and WGCNA results:
##compareGaussNetworks(GlobalSIMoNeNetNF,GlobalWGCNANet,c("SIMoNe","WGCNA"))

#StatusFactorSIMoNeNet<-FactorNetworks(GaussianSpAData,StatusFactor,"SIMoNe") # We infer different
##SIMoNe networks on different groups of samples (patients and controls)
## If you wish to add gene annotations (can take a while):
##StatusFactorSIMoNeNet<-FactorNetworks(GaussianSpAData,StatusFactor,"SIMoNe",
##	list(AddAnnotations=TRUE))
#StatusFactorSIMoNeNet<-FilterEdges(StatusFactorSIMoNeNet,0.4) # We filter edges on absolute
##values of spearman's rho
#plot(StatusFactorSIMoNeNet[["Patient.B27+"]]$Network) # We plot the network in patients
##dev.off() # We close the used device for plot
#plot(StatusFactorSIMoNeNet[["Control.B27-"]]$Network) # We plot the network in controls
##dev.off() # We close the used device for plot
## You can also use directly:
## par(mfrow=c(2,1))
## plot(StatusFactorSIMoNeNet)
## If you wish to compare results between different level of factors infered by SIMoNe:
##compareFactorNetworks(StatusFactorSIMoNeNet)

## If you wish to infer different SIMoNe networks at different LPS stimulation times:
##TimeFactorSIMoNeNet<-FactorNetworks(GaussianSpAData,TimeFactor,"SIMoNe")
##TimeFactorSIMoNeNet<-FilterEdges(TimeFactorSIMoNeNet,0.4)
##plot(TimeFactorSIMoNeNet$H0$Network)
##plot(TimeFactorSIMoNeNet$H6$Network)
##plot(TimeFactorSIMoNeNet$H24$Network)

#MultiSpAData<-MultiDEGeneExpr(GaussianSpAData,DEGeneExpr(t(SpADataExpression[18:34,]),
#	SpADEGenes[18:34,]),DEGeneExpr(t(SpADataExpression[35:51,]),SpADEGenes[35:51,])) # We
#	#gather multiple lists of DEGeneExpr objects. Should come from the same experiment, but
#	#not compulsory.
#MultiSpANetworks<-MultiNetworks(MultiSpAData,
#	SelectInteractionsSTRING=c("coexpression","experimental","knowledge"),STRINGThreshold=0.9,
#	FilterSIMoNeOptions=list(Threshold=0.4),Factors=StatusFactor) # We infer all kinds of
#	#networks in the MultiDEGeneExpr object
## If you wish to add gene annotations (can take a while):
##MultiSpANetworks<-MultiNetworks(MultiSpAData,
##	SelectInteractionsSTRING=c("coexpression","experimental","knowledge"),STRINGThreshold=0.9,
##	FilterSIMoNeOptions=list(Threshold=0.4),Factors=StatusFactor,
##	STRINGOptions=list(AddAnnotations=TRUE),
##	SIMoNeOptions=list(AddAnnotations=TRUE),
##	WGCNAOptions=list(AddAnnotations=TRUE))

## The following section is commented out due to the dependence on Cytoscape and cyREST
##installation.
## Before using this part of code, please be sure to have installed the last version of Cytoscape
##here: http://www.cytoscape.org/download.php
## And the cyREST plugin: http://apps.cytoscape.org/apps/cyrest
## If you can't use Cytoscape or cyREST, you can still construct networks and export these in
##a correct file formats with the previous sections.

##resetCytoscapeSession() # We reset the Cytoscape session
##addNetworkStyle("STRINGNet.noannot",class(SpASTRINGNet),Annotations=FALSE,
##	points.size.map="P.Value",points.fill.map="logFC") # We add the style in Cytoscape for
##	displaying STRINGNet objects
##NetId<-addGraphToCytoscape(SpASTRINGNet,StyleName="STRINGNet.noannot") # We add the global
##	STRINGNet object. This network won't show up, due to its large size (numer of edges
##	above 10). If you absolutely want to visualize the network, right click on this and
##	create view.
##NetId<-addGraphToCytoscape(PPISpASTRINGNet,StyleName="STRINGNet.noannot") # We add the PPI
##	STRINGNet object
##addNetworkStyle("ShortPathSTRINGNet.noannot",class(shortPathSpANet),Annotations=FALSE,
##	points.size.map="P.Value",points.fill.map="logFC") # We add the style in Cytoscape for
##	displaying ShortPathSTRINGNet objects
##NetId<-addGraphToCytoscape(shortPathSpANet,StyleName="ShortPathSTRINGNet.noannot") # We add the
##	ShortPathSTRINGNet object
##addNetworkStyle("SIMoNeNet.noannot",class(GlobalSIMoNeNet),Annotations=FALSE,
##	points.size.map="P.Value",points.fill.map="logFC") # We add the style in Cytoscape for
##	displaying SIMoNeNet objects
##NetId<-addGraphToCytoscape(GlobalSIMoNeNet,StyleName="SIMoNeNet.noannot") # We add the
##	SIMoNeNet object
##addNetworkStyle("WGCNANet.noannot",class(GlobalWGCNANet),Annotations=FALSE,
##	points.size.map="P.Value",points.fill.map="logFC") # We add the style in Cytoscape for
##	displaying WGCNANet objects
##NetId<-addGraphToCytoscape(GlobalWGCNANet,StyleName="WGCNANet.noannot") # We add the
##	WGCNANet object
##addFactorGraphsToCytoscape(StatusFactorSIMoNeNet,
##	StyleNames=rep("SIMoNeNet.noannot",length(StatusFactorSIMoNeNet))) # We add the
##	FactorNetworks object
##saveCytoscapeSession("SingleNetworks",overwrite=T) # We save the Cytoscape session

##resetCytoscapeSession() # We reset the Cytoscape session
##addMultiGraphToCytoscape(MultiSpANetworks,points.size.map="P.Value",points.fill.map="logFC")
##	We add the MultiNetworks object
##saveCytoscapeSession("MultiNetworks",overwrite=T) # We save the Cytoscape session
}
