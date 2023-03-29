# Description de l’offre standard de questionnaire web/papier avec l’outil Eno


Ce document est destiné aux concepteurs de questionnaires d’enquête.

Il a pour objectif de définir le cadre et les standards actuels de la modélisation d’un questionnaire d’enquête (web et papier).


|Version|Date|
| :- | :- |
|3|01/2021|
|2|21/12/18|
|1|05/12/16|

## Contexte et lexique 

Eno est un générateur d’instruments de collecte qui permet de réaliser des questionnaires au format web (depuis 2015), au format pdf (depuis fin 2018), dans un format dit « spécifications » et au format « poste enquêteur » (depuis 2019).
Développé dans le cadre du programme Coltrane (Collecte transversale des enquêtes), il est depuis 2016 sous-maîtrise d’ouvrage DMCSI (division RTI).
Les questionnaires sont générés à partir de leur description formelle spécifiée dans le standard DDI (Data Document Initiative, dont l’objectif est de décrire et conserver les métadonnées sur les enquêtes statistiques).
Eno est un outil de génération automatique : il ne propose pas de service de développement de questionnaire sur mesure, ce qui peut conduire à adapter certains questionnaires.
- Intégrer la filière métadonnées a pu être ou est l’occasion de revoir le questionnaire, la formulation et la présentation des questions pour les rendre plus lisibles, plus conformes aux standards d’interrogation ;
- L’utilisation du standard DDI nécessite parfois de revoir le questionnaire, et de formaliser sa description ;
- Les choix génériques de mise en forme (couleurs, polices, disposition verticale des questions) ne peuvent faire l’objet de modifications sur mesure ;
- Enfin, comme décrit plus loin, la génération du questionnaire papier ET du questionnaire web à partir de la même description peut nécessiter des ajustements des formulations ou des pratiques (présence d’info-bulles, consignes, etc.).

Pour générer cette description formelle en DDI, les concepteurs d’enquêtes utilisent Pogues, un outil permettant une saisie conviviale du questionnaire et générant les métadonnées correspondantes au format DDI. Pogues appelle les web services Eno, ce qui permet au concepteur de visualiser immédiatement le questionnaire sous différents formats (web, pdf, spécifications, bientôt poste enquêteur ménages), avec des choix de paramètres par défaut (cf. partie 7).

À l’issue des travaux de saisie effectués avec Pogues (voire, si nécessaire, dans le DDI), le questionnaire (web, papier) peut être généré et déployé sur une infrastructure de collecte. Ces travaux dits d’intégration sont menés par une équipe dédiée au SNDI de Lille.

## Une mise en forme standardisée, pourquoi ? 

Le développement d’Eno, c’est-à-dire la construction d’un outil de génération de questionnaire commun à toutes les enquêtes (historiquement enquêtes entreprises dans le cadre du projet Coltrane) a facilité la standardisation d’un certain nombre de choix de conception, de structure, et de mise en forme des questionnaires.
Ces choix relèvent souvent des bonnes pratiques, et constituent un cadre pour la mise en œuvre de questionnaires homogènes.

Une liste de « principes de conception de questionnaire auto-administré » a été énoncé par Rebecca L. Morrison (Census Bureau) et repris dans différents ouvrages (Designing and conducting business surveys, Snijkers and al.). Bien qu’axés enquêtes entreprises, ces principes sont proches de ceux énoncés dans le contexte des enquêtes ménages.
Ils mettent l’accent sur **l’homogénéité des questionnaires, la cohérence visuelle, et la facilité de navigation** : la mise en forme est au service du fond, c’est un marqueur visuel (du type de questions, du format…) et une aide à la présentation structurée de l’information.
En conséquence, les choix de mise en forme par l’outil Eno privilégient ces aspects (cohérence, structure), plutôt qu’une trop grande souplesse de mise en forme, susceptible de nuire à la clarté de l’information.
L’harmonisation et la standardisation sont un gain, tant pour les temps de conception et développement qu’en termes d’image de l’Institut. À ce titre, il est donc important de maintenir ce cadre, lorsque cela est possible.

**Avenir**

Eno est un outil qui évolue et qui prend en compte des besoins de plus en plus larges : en 2021, il répond à la quasi-totalité des besoins des enquêtes entreprises et les évolutions actuelles se concentrent sur les demandes plus spécifiques des enquêtes auprès des ménages.

Les demandes d’évolution sont à formuler au comité des utilisateurs Eno, ou au comité de maintenance, la réalisation de ces évolutions est arbitrée au sein de ce comité qui se réunit deux fois par an.

Les demandes d’évolution sont à formuler au comité des utilisateurs Eno, ou au comité de maintenance, la réalisation de ces évolutions est arbitrée au sein de ce comité qui se réunit deux fois par an.

## Que sait faire Eno ?

Eno est un générateur, produisant des instruments de collecte et notamment des questionnaires. Ces derniers sont générés à partir de leur description formelle spécifiée dans le standard DDI (Data Document Initiative, dont l’objectif est de décrire et conserver les métadonnées sur les enquêtes statistiques).

En 2021, Eno génère :
- un format de sortie Xforms, visualisable grâce à Orbeon, et destiné à la collecte web ;
- un format de sortie fo, transformé en PDF par un module Courrier et destiné à la collecte papier ;
- un format de sortie XML Lunatic, transformé en Json en dehors de Eno, et destiné à la collecte en face-à-face ou par téléphone ;
- un format de sortie dit « spécifications », format odt, destiné aux concepteurs d’enquête ou aux relecteurs du questionnaire.
 
## A quoi ressemble un questionnaire web généré par Eno ?

Les questionnaires proposés par Eno sont découpés en pages web, selon la structure sémantique du questionnaire. Les grandes parties du questionnaire constituent des séquences, chaque séquence étant présentée sur une page web, et potentiellement découpée en sous-séquences.
Ces séquences ou sous-séquences comprennent elle-mêmes des questions et des déclarations de différents type (aide, consigne ou commentaire, nomenclature en cours de révision).
 
#### Navigation 

La navigation s’opère par des boutons « Retour » et « Enregistrer et continuer », situés en bas à droite de l’écran. Le questionnaire ne propose pas de menu de navigation, ni d’onglet. En effet, la possibilité de revenir en arrière dans un questionnaire peut poser des questions techniques et statistiques sur l’ordonnancement des contrôles, la cohérence des réponses, le positionnement à la reconnexion, etc.
Le répondant peut toutefois naviguer dans le questionnaire en utilisant le bouton « Retour » pour revenir à la page précédente.
Les données sont enregistrées à chaque changement de page.

#### Page de début et page de fin 

Le texte de la page d’accueil est standardisé : il existe une version de ces pages pour les enquêtes entreprises et une pour les enquêtes ménages.
La page de fin peut être paramétrée : il est possible d’ajouter une question sur le temps de réponse (obligatoire pour les enquêtes entreprises, sauf en cas d’enquêtes infra-annuelles) et une zone de commentaires libres (cf. partie 7). La page de validation, confirmation de la validation et le récapitulatif de fin sont surchargés par Coltrane ou Coleman (donc non visible dans Pogues).

#### Métadonnées de collecte 

Certains éléments relatifs à l’enquête (numéro de visa par exemple, etc.) sont personnalisés lors de la génération du modèle de questionnaire (non dynamique en cours de collecte). Ceci implique donc qu’il y aura autant de « versions » de questionnaires que de numéros de visa transmis.

### La mise en forme générale du questionnaire

Les titres ou éléments distinguant les séquences et sous-séquences, les polices (taille1 et couleur) sont standardisés.
Une barre d’avancement est affichée en haut à droite du questionnaire. Le pourcentage d’avancement est calculé en rapportant le nombre de pages déjà passées sur le nombre de pages total du questionnaire. L’adéquation parfaite entre la barre d’avancement et l’avancement réel est impossible dès lors qu’il existe des filtres au sein du questionnaire. De plus, cette barre ne reflète pas le taux de remplissage effectif du questionnaire mais l’avancement dans la navigation.

- Côté entreprises, le bandeau d’en-tête qui figure sur toutes les pages rappelle le nom de l’enquête, le type d’unité enquêtée (entreprise, établissement…) et son identifiant. A droite un menu propose différentes aides dont le formulaire pour l’assistance. 
    
[png002.png]

 
-  Côté ménages, le bandeau d’en-tête qui figure sur toutes les pages rappelle le nom de l’enquête. A droite un menu propose différentes aides dont le formulaire pour l’assistance.

[png003.png]

Il est possible de réaliser une boucle sur une partie du questionnaire (comme pour l’enquête Ecmoss comportant une partie « salariés » ou pour l’enquête VQS comportant une partie « Habitants du logement »), ou d’avoir un questionnaire en deux temps (Eacei : proposition de type d’énergies consommées, puis parties du questionnaire relatives à ces énergies reposant sur des conditions d’affichage – filtres).

### La mise en forme des questions

La police (couleur, taille), la numérotation et la mise en forme des questions sont standardisées.

#### Les boucles 

On appelle **boucle** le questionnement répétitif d’un ensemble de questions. Une boucle ne peut concerner que des modules (ou sous-modules) entiers.

#### La numérotation 

Dans les enquêtes auprès des entreprises, la bonne identification des questions est importante pour les relations entre les gestionnaires et les enquêtés et doit idéalement être identique selon le format de questionnaire (papier ou web) voire avec l’application de gestion.

Dans les enquêtes ménages et entreprises, la numérotation des questions facilite la rédaction des instructions de redirection.

Plusieurs difficultés ont trait à la numérotation, entre autres :

- la cohérence entre la numérotation web, et celle d’un questionnaire papier parfois ancien, parfois répercutée dans les applications de gestion (côté entreprises, ce sujet est moins vrai suite à l’intégration de la quasi-totalité des enquêtes entreprises dans Coltrane)
- en cas de redirections et de filtres, la numérotation étant continue sur l’ensemble des questions du questionnaire, la numérotation affichée pour un répondant sera discontinue (les questions filtrées sont numérotées mais pas affichées).

Il n’existe pas de solution miracle à ces difficultés, car les filtres recouvrent des questionnements différents (des questions complémentaires, ou des modules entiers peuvent être filtrés).

Une numérotation *ad hoc* n’est pas possible mais 3 options sont  proposées. Ces options reposent sur les principes suivants :

- si elles sont numérotées, toutes les questions sont numérotées, y compris les questions filtrées. Cela pourra induire sur le web un séquencement non continu des questions affichées.
- les sous-séquences ne sont pas numérotées.
- les séquences sont numérotées en chiffres romains, et les questions en chiffres arabes.

Il n’y a pas de numérotation à un niveau plus fin que la question, y compris dans les listes de codes, ou dans les tableaux (ces derniers sont considérés comme « une unique question »).

Il est possible d’opter pour une numérotation :
- incrémentée de 1 à n pour l’ensemble du questionnaire. Cette numérotation a l’avantage d’identifier très simplement une question de façon unique, d’y faire appel dans les filtres, redirections, contrôles, en particulier sur les questionnaires papier. Cette numérotation est très souvent présente dans les questionnaires ménages, ou dans les questionnaires des INS étrangers.
- incrémentée de 1 à n sur chacun des modules. Cette numérotation est plus souvent utilisée par les enquêtes entreprises de l’Insee. Elle n’a pas un grand intérêt dans les questionnaires simples.
- pas de numérotation des questions.
	
Pour un questionnaire comportant des boucles, la numérotation est la même pour  chaque occurrence

#### Les déclarations (aides, consignes ou commentaires) 

Ces aides figurent sous les questions, titre de séquence ou de sous-séquences, sans distinction selon la « nature » de la déclaration choisie (lors de la saisie dans Pogues).
Il est également possible d’ajouter des infobulles, matérialisées par un ?. Elles sont considérées comme une aide supplémentaire, et ne sont pas visibles sur le web en première intention (seul le survol de l’infobulle affiche le contenu). Il est donc important de réfléchir aux contenus de ces infos-bulles et à l’information qu’on souhaite voir figurer « en clair » sur les questionnaires.

#### La disposition des éléments du questionnaire

L’homogénéité de la disposition est une bonne pratique1, facilitant la lecture et la compréhension du questionnaire. La position d’un certain nombre d’éléments n’est donc pas modifiable :
- les champs de saisie sont en dessous de la question ou de l’instruction le cas échéant, pour les questions simples ;
- les libellés de la liste de codes se situent en dessous du libellé de la question.
- les boutons radio ou les cases à cocher sont à gauche des libellés pour les questions à choix unique ;
- les types de réponse case à cocher pour les questions multiples sont situés à gauche des libellés
- les types de réponse des batteries de questions (par exemple batteries de oui/non plutôt que QCM) sont situées à droite du plus long libellé
- les unités de mesure, sur fond grisé sont à droite du champ de saisie.

Les champs de saisie sont actuellement blancs, avec un contour gris. 

### Les types de questions et formats de réponses


Les choix de typologie de réponses, et en particulier de terminologie suscitent parfois des incompréhensions liées au décalage entre un vocabulaire « contrôlé » (calqué sur une description formelle), et un vocabulaire « courant ».
Le plus souvent, on peut englober dans le terme « question », le libellé de la question ET son champ de réponse. Par exemple la question « Quel est votre parfum de glace préféré ? » pourra prendre plusieurs formes :
- une question ouverte, dont la réponse est dite simple, avec un champ texte libre ;
- une question associée à une réponse à choix unique, en proposant une liste fermée de modalités de réponse. On parle parfois par abus de langage de question à choix unique, il s’agit en fait d’une question avec réponse à choix unique.

Eno propose de nombreux types de questions, comportant des formats de réponse plus ou moins complexes. Ces formats sont répartis en 4 groupes (du plus simple au plus complexe) : 

- les questions ouvertes ou réponses simples
- les questions à choix unique
- les questions à choix multiple
- les tableaux


#### Les questions ouvertes ou réponses dites simples

Il s’agit de répondre à une question ouverte, comprenant un seul champ, libre c’est-à-dire ne reposant pas sur une liste de codes fermée. Les formats de réponses peuvent varier :
- texte (dont le nombre maximum de caractères ou le « motif » – adresse mail par exemple – peuvent être précisés) ;
- numérique (les bornes maximum et minimum, ainsi que le nombre de décimales doivent être précisés ; l’affichage de l’unité constitue une aide pour le répondant – une liste d’unités est proposée dans Pogues, elle peut être élargie par une reprise manuelle).
Un exemple non paramétrable (valeur borne min + (borne max – borne min)/4)) peut être ajouté à coté du champ de réponse (jusqu’en 2018, il était systématique mais la majorité des concepteurs préfèrent ne pas le proposer ou en proposer au cas par cas, dans les instructions lorsque cela est nécessaire) ;
- date (au format AAAA-MM-JJ, AAAA-MM ou AAAA) ;
- booléen (pour ce dernier type de réponse, seule la case à cocher est proposée comme mise en forme).

[png004.png]

[png005.png]


#### Les questions à choix unique de réponse

Il s’agit de répondre à une question qualitative, s’appuyant sur une liste de codes, et présentée sous forme de boutons radios ou de liste déroulante. Parmi cette liste, l’enquêté ne peut effectuer qu’un seul choix.
La mise en forme classique et accessible est un bouton radio : lorsque le répondant a sélectionné une réponse, elle ne peut plus être « désélectionnée » (il peut seulement sélectionner une autre modalité).
Pour plusieurs enquêtes, les réponses des questions à choix unique sont représentées par des cases à cocher décochables afin d’offrir au répondant la possibilité de revenir sur sa réponse (en particulier annuler sa réponse, ce que ne permet pas le bouton-radio usuel), Il faut avoir conscience que cela contrevient aux standards du web et aux critères d’accessibilité. Sur le web ces deux représentations sont différentes.

[png006.png]

Dans les questionnaires papier, les listes déroulantes seront remplacées par un champ texte libre.
 
#### Les questions à choix multiple

Il s’agit de répondre à une question qualitative s’appuyant sur une liste de codes. Parmi cette liste, l’enquêté peut effectuer plusieurs choix :
- soit en cochant plusieurs cases ;
- soit en sélectionnant oui/non pour chacune des modalités.
Ici encore, si le concepteur choisit des cases à cocher, elles seront décochables, s’il choisit des boutons radio, le répondant ne pourra pas annuler sa réponse (mais uniquement choisir une autre modalité).
Cette mise en forme peut également être retenue pour des batteries de questions :

[png007.png]


#### Les tableaux

Les tableaux permettent de présenter l’information à collecter, de manière compacte et visible en une seule fois. Il est communément reconnu dans la littérature que les tableaux doivent être évités lorsque c’est possible. En effet, si ce format est particulièrement familier aux statisticiens, ce n’est pas nécessairement le cas pour les répondants.
Il est recommandé de simplifier lorsque c’est possible, et de poser plutôt les questions simplement de façon disjointe.
Les tableaux comprennent un ou deux axes d’informations (qualitatifs) et une ou plusieurs mesures (pouvant prendre les différents formats des réponses simples et uniques).
Les titres de colonnes sont définis colonne par colonne.
La hauteur et la largeur des lignes sont calculées de manière automatique à partir de leur contenu. Cependant, certains tableaux particulièrement larges, donc illisibles, peuvent fait l’objet de développements spécifiques, réalisés par les intégrateurs - donc non visibles dans Pogues (feuilles de style en cascades ou CSS 2).

A noter : bien qu’il permette de collecter plusieurs « variables », le tableau est bien comme une question et non pas un ensemble de questions.

[png008.png]
[png009.png]


Outre les tableaux à 2 dimensions fixées, il est possible de proposer des **« tableaux dynamiques »** donc des tableaux, en général préremplis, auxquels on peut ajouter des lignes (présence d’un bouton « “Ajouter”):
- les lignes ajoutées auront toutes le même format, éventuellement différent du format des lignes qui les précèdent.
- les tableaux dynamiques ne comportent pas d’entête de ligne.

[png0010.png]
 

#### Les listes hiérarchiques

Il est possible d’utiliser dans les tableaux des listes de codes hiérarchiques. La présentation imbriquée est pour l’instant la présentation par défaut.

#### Les boucles

On appelle boucle le questionnement répétitif d’un ensemble de questions. Une boucle ne peut concerner que des modules (ou sous-modules) entiers.
On appelle cet ensemble de questions une occurrence.
Si nécessaire, on peut définir un nombre maximum d’occurrences affichables, en absolu ou avec une variable collectée.

[png0011.png]



### Les éléments dynamiques

#### Les contrôles
Deux types de contrôles sont possibles dans Eno.

#### Les contrôles de format
Ce sont des contrôles bloquants. Ils obligent le répondant à respecter le format et les bornes (max, min) pour les réponses numériques, date, et texte dont le motif est spécifié (pour les adresses mail par exemple).
Ces contrôles se déclenchent à la sortie du champ concerné, et sont matérialisés par un message en police rouge, affiché immédiatement sous le champ concerné. 
La rédaction des messages liés à un contrôle de format est standardisée : « Vous devez saisir un nombre entier compris entre 0 et 100 » ou « Vous devez utiliser le point comme séparateur de décimale, sans espace, et saisir un nombre compris entre 0.0 et 100.0 (avec au plus 1 chiffre derrière le séparateur ". » »
Le passage à la page suivante est impossible : une pop-up invite le répondant à corriger la question et ne permet pas d’aller plus loin. Le message de la pop-up est standardisé, sur la forme, et sur le fond.

[png0012.png]

#### Les contrôles « métier » 

Ils portent sur la cohérence du questionnaire, ne sont pas bloquants et sont matérialisés par un message rouge apparaissant en dessous de la question. Ces messages, invitant l’utilisateur à corriger suite à un contrôle de cohérence, sont standardisés en termes de mise en forme (couleur, et emplacement du message) mais le texte du contrôle doit être précisé par la MOA lors de la description du contrôle dans Pogues.
S’il reste un contrôle non bloquant sur la page, alors lorsque le répondant demande à passer à la page suivante une pop-up l’invite également à corriger sa réponse, mais elle ne bloque pas le passage à la page suivante. Le message est standard sur la forme et sur le fond. Un bouton « poursuivre » permet de passer à la page suivante si le répondant ne souhaite pas corriger sa réponse.
Remarque : si un contrôle concerne plusieurs champs, il se déclenche, si la condition est vérifiée, dès la sortie du premier des champs concernés. En particulier, si le contrôle consiste à vérifier que B n’est pas vide, dès lors que A est renseigné, il peut se déclencher dès la sortie de la question A, alors même que le répondant n’a pas encore accédé à la question B. Il convient donc d’attirer l’attention des concepteurs sur cette limite, qui ne résulte pas d’un problème de développement des outils, mais des technologies utilisées.

[png013.png]

#### Les redirections ou filtres

On appelle redirection ou filtre le fait de masquer ou afficher une question, en fonction des réponses précédentes du répondant : 
- afficher une suite de questions lorsqu’une condition est vérifiée.
- masquer une suite de questions lorsqu’une condition est vérifiée.
Il peut par exemple être préférable d’afficher des questions si elles apportent une information susceptible d’améliorer la compréhension de l’enquêté. En revanche dans le cadre de « branches » de questionnaire, il est préférable de masquer totalement les questions filtrées.

En termes de « conservation des données saisies », lorsque les questions disparaissent de l’écran, les réponses qui auraient pu y être saisies si le filtre avait été activé puis désactivé sont supprimées.

Les comportements de type filtre ne sont pas possibles au sein d’une même « question » (par exemple au sein d’un tableau) et ne concernent que des questions entières (libellé + déclarations + champs de réponse).

#### La personnalisation

Il est possible de personnaliser le questionnaire, de différentes manières.

#### Les données antérieures ou externes
Le questionnaire créé par Eno est un « modèle de questionnaire ». Lorsque ce questionnaire est instancié pour un enquêté (par Coltrane ou Coleman) on peut pré-renseigner certaines informations pour le répondant (exemple : année d’exercice, code APE, réponse de l’année passée).
Ces informations sont fournies par la maîtrise d’ouvrage de l’enquête avant le début de la collecte (via le « fichier de personnalisation ») : il peut s’agir de textes, nombres, valeurs booléennes, codes, dans des boucles ou pas, etc.
Le questionnaire généré par Eno peut utiliser ces valeurs pour personnaliser des libellés voire dans des champs de collecte pré remplis : dans ce dernier cas, le répondant peut s’il le souhaite modifier ces informations pré-renseignées.

#### La personnalisation en cours de collecte
La personnalisation des libellés est également possible à partir de variables collectées, ou calculées en cours de collecte (si la question est posée avant la personnalisation).
Attention toutefois, la personnalisation en cours de collecte n’est possible que pour un questionnaire web, et pas pour un questionnaire papier : les questionnaires papier ne peuvent être personnalisés que par des informations connues a priori.
De même, l’utilisation de filtres à des fins de personnalisation du questionnaire est possible dans le web, mais pas sur le papier.

________________________________________
## À QUOI RESSEMBLE UN QUESTIONNAIRE PAPIER GÉNÉRÉ PAR ENO ?

La structure générale est conservée puisque la description en termes de DDI est identique : les grandes parties du questionnaire constituent des séquences, chaque séquence pouvant être organisée en sous-séquences, qui comprennent elles-mêmes des questions et des déclarations de type aide, consigne ou commentaire.

La pagination a été construite pour respecter les règles suivantes :

- on ne change pas systématiquement de page en début de module, sauf cas particulier exceptionnel (exemple : ESA enquête annuelle avec prestataire de saisie donc souhait de limiter les modifications des masques) ;
- certains « blocs » sont insécables (donc un saut de page est inséré dans ces cas)  :
  - un libellé de question, ses instructions éventuelles, et les champs de réponse associés ;
  - un titre de séquence ou sous-séquence, ses instructions éventuelles, et la question immédiatement suivante

### Autour du questionnaire

La page de garde est standardisée : il existe une version de ces pages pour les enquêtes entreprises et une pour les enquêtes ménages.
La collecte du temps de réponse en fin de questionnaire et une zone de commentaires peuvent être ajoutées en fin de questionnaire (information à fournir lors de la génération du questionnaire sur les plateformes de collecte).
Contrairement au web, tous les éléments relatifs à l’enquête (numéro de visa date de retour, etc.) sont personnalisés lors de la génération du questionnaire papier donc « dynamiques ».

### La mise en forme générale du questionnaire

On ne redécrira pas ici l’ensemble du questionnaire, mais on s’attardera sur les points de différences entre les questionnaires web et papier.
Comme pour le questionnaire web, les éléments distinguant les séquences et sous-séquences, les polices (taille et couleur) sont standardisés dans le questionnaire papier.
La taille des champs de saisie ou des râteaux cases, l’espacement entre les différents éléments ont été conçus pour la lecture optique, en s’appuyant notamment sur des documents fournis avec des machines de saisie.
Les marges permettent également de contenir des éléments utiles à la gestion (code-barres, data-matrix[^15]).

#### Les questions ouvertes ou réponses dites simples

Les champs texte de plus de 20 caractères sont présentés avec une ligne (champ texte « court »), ou avec trois lignes pour les textes « longs » (supérieurs à 250 caractères).
Les dates sont présentées avec des cases pour chaque position.

[png014.png]

Les champs numériques, les champs texte de moins de 21 caractères (exemple : code postal, numéro Siren, Siret) peuvent être présentés avec du précasage ou sans précasage : il s’agit d’un paramètre à préciser lors de la génération du modèle de questionnaire – cf. partie 7). Le précasage est adapté à la lecture optique. Dans Pogues, l’affichage se fait avec précasage.

Précasage (« saisie optique »)

[png015.png]

Sans précasage (« saisie manuelle »)

[png016.png]

#### Les questions à choix unique de réponse

Pour le bouton-radio comme pour la case à cocher, la présentation papier sera une case à cocher (le bouton radio rond est un standard web qui n’est pas adapté à une saisie papier).
Pour la liste déroulante, la présentation papier sera un champ de type texte. En effet, le recours à la liste déroulante est fréquent pour les longues listes de modalités (issues de la NAF par exemple) que l’on ne souhaite pas imprimer exhaustivement dans un questionnaire.

[png017.png]

5.1.3. Les questions à choix multiple
Les questions à choix multiple suivent la même mise en forme que pour le web (possibilité d’avoir une case à cocher à gauche du libellé, ou une liste oui/non à droite).
Les spécificités de forme précisées pour les questions à choix unique s’appliquent également (case à cocher uniquement, pas de bouton radio, liste déroulante remplacée par un champ texte libre).

[png018.png]

#### Les tableaux

La taille des colonnes des tableaux ou des batteries de questions n’est pas optimisée pour l’instant et l’affichage « par défaut » est un simple découpage en colonnes de taille égale. Cela peut faire l’objet d’adaptations lorsque cela est nécessaire, à définir avec l’équipe Coltrane ou Coleman.


[png019.png]

**Cas des tableaux dynamiques :**

Le questionnaire web permet d’avoir des tableaux avec un nombre de lignes variables, le répondant pouvant ajouter lui-même des lignes : ce comportement dynamique est bien sûr impossible sur le papier. Par défaut, les tableaux dynamiques seront sur les questionnaires papiers des tableaux statiques comportant n lignes, ce n pouvant être paramétré (cf. partie 7)

[png020.png]

#### Les déclarations

Les déclarations (aides, consignes ou commentaires) sont présentées de la même façon que dans le web, sans distinction selon la nature de la déclaration.
En revanche, les info bulles sont considérées comme une aide supplémentaire, non visibles en première intention sur le web, et ne sont donc pas présentes dans le questionnaire papier. Elles sont signalées par une * dans le questionnaire : leurs contenus peuvent par exemple figurer dans une notice, non comprise dans le périmètre fonctionnel de Eno.
Il est donc important de réfléchir aux contenus de ces infos-bulles et à l’information qu’on souhaite voir figurer sur les questionnaires.

### Les éléments dynamiques
#### Les contrôles

Aucun contrôle n’est bien sûr possible sur le papier, qu’il s’agisse de contrôles de cohérence, ou de format. Seul le nombre de cases pour les champs numériques (si le choix de précasage est fait) peut permettre de donner une précision supplémentaire sur la réponse attendue.
Les messages de contrôle du questionnaire web ne figurent pas non plus sur le questionnaire papier.

#### Les redirections

On appelle redirection (ou filtre) le fait de masquer ou afficher une question, en fonction des réponses précédentes du répondant (ou d’éléments de personnalisation).
Dans les questionnaires papier générés par Eno, toutes les questions sont présentes puisqu’il n’y a pas de comportement dynamique. Un texte explicatif s’affiche, dans un style particulier : le contenu du texte est entièrement spécifié par la personne qui saisit le questionnaire dans Pogues. 

[png021.png]

De même l’utilisation de filtres à des fins de personnalisation du questionnaire (exemple : afficher une question si l’APE vaut telle valeur ou si le nombre d’individus est inférieur à une valeur) est possible dans le web, mais un comportement équivalent n’est pas possible sur le papier.

#### La personnalisation

La personnalisation des questionnaires grâce à l’utilisation du fichier de personnalisation est possible (exemple : affichage de l’année de collecte dans un libellé de question, affichage du nom d’un produit). La personnalisation a lieu à la génération du pdf.
Il est aussi possible de préremplir une variable collectée, la donnée du mois passé par exemple pour une enquête infra-annuelle.
En revanche il n’est pas possible de paramétrer un libellé de question en fonction de la valeur d’une donnée du fichier de personnalisation.



## Format odt

Eno permet de visualiser un questionnaire au format dit « spécifications » : il s’agit d’un fichier (format odt) qui liste les questions et leurs attributs (noms des variables métier, format voire les bornes), les contrôles, les déclarations, les redirections, les variables calculées (et leurs formules), les variables externes.
Il permet de relire, diffuser, valider la saisie qui a été faite dans Pogues.
En cours : les infobulles, le nom et le contenu des boucles.
 

[^7]: R. Morrisson, G. Snijkers et ses coauteurs sont tous statisticiens publics en statistiques d’d’entreprises.
[^8]: Dillman DA, Smyth JD. Melani Christian L Internet, Phone, Mail, and Mixed-Mode Surveys : : The Tailored Design Method, 4th Edition, Wiley, 2014 ;
    Rhodes SD, Bowie DA, Hergenrather KC. Collecting behavioural data using the world wide web : : considerations for researchers. J Epidemiol Community Health. 2003 Jan ; ; 57(1) : :68-73
[^9]: Note pour plus tard : les polices sont en px, donc à passer en em pour être responsive design.
[^10]: qui figure parmi les principes énoncés par R. Morrisson.
[^11]: Qui figure parmi les principes énoncés par R. Morrisson.
[^12]: Les tableaux sont souvent utilisés dans les questionnaires papier, pour des raisons de place occupée dans le questionnaire. Lors du passage à un questionnaire internet, ce format ne doit pas être adopté de façon systématique, mais uniquement lorsque la représentation (en tableau) est utile à la compréhension, et représente réellement la structure de l’information demandée.
[^13]: Les feuilles de style en cascade, généralement appelées CSS (Cascading Style Sheets), forment un langage informatique qui décrit la présentation des documents HTML et XML. Les standards définissant CSS sont publiés par le World Wide Web Consortium. Introduit au milieu des années 1990, CSS devient couramment utilisé dans la conception de sites web et bien pris en charge par les navigateurs web dans les années 2000.
[^14]: Dans tous les cas, lors de l’extraction des données du portail de collecte (Coltrane ou Coleman) à destination du poste de gestion, les variables existeront avec les attributs « nouvelle » (vide si pas de donnée antérieure) et « ancienne ».
[^15]: <https://fr.wikipedia.org/wiki/Datamatrix>