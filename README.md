
## Herbarium numérique de la Ville de Nantes

:herb: Projet de valorisation numérique de l'herbarium historique du Jardin des Plantes de Nantes.

Les premiers specimens de cet herbarium ont été collectés à partir de 1873. Cet herbarium n'a cessé d'être enrichi depuis cette date: il comprend aujourd'hui près de 1800 planches d'herbier qui ont toutes fait l'objet d'une numérisation rigoureuse.

Le présent projet vise à diffuser la version numérique de ces planches d'herbier par le biais d'une plateforme web dont le code source est publié ici.

![](https://s3-eu-west-1.amazonaws.com/herbier-nantes/herbier-nantes-teaser.gif)


## Spécifications techniques

Le présent projet utilise les technologies suivantes (listes non exhaustives):

- Ruby on Rails 4.2
- PostgresQL 9.4
- Elasticsearch 1.4.4
- ReactJS 0.14
- LeaftletJS

Par ailleurs, ce projet permet d'exposer un service d'images conforme aux standards **[International Image Interoperability Framework](http://iiif.io)**.

Les [spécifications de standard](http://iiif.io/api/image/2.0/#uri-syntax) sont maintenues par l'Université de Stanford.

L'API Image de l'Herbarium numérique de Nantes est disponible via le chemin suivant: 

```sh
[:host]/image-service/[:scanid]
```

## Roadmap

Ce projet est en cours de développement. Voici la liste non exhaustaive des améliorations à venir:

- Recherche cartographie de l'origine des specimens présents sur les planches d'herbier
- Amélioration des metadonnées associées au service d'image IIIF
- Construction d'une fonction d'export et d'un service de données compatibles avec le standard DwC-A - [Darwin Core Archive](http://rs.tdwg.org/dwc/terms/guides/text/index.htm). Source: [GBIF Darwin Core Archive, How-to Guide](http://www.gbif.org/resource/80636)

