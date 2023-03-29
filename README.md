# Documentation de Bowie, atelier de conception

TODO :

- [ ] Méthodo
    Eléments d'Anne Z:\Méthodologie\standard_Eno_concepteurs_màj2021.md
    → premier doc "conception/guide-conception"
    → encore de réécriture par Anne
- [ ] Non réponse
    https://intranet.insee.fr/jcms/17424176_SocialQuestion/infos-sur-la-non-reponse


Autres docs :

https://intranet.insee.fr/jcms/16002409_DBWikiPage/eno-utilisation-du-generateur-filiere-unique-hors-coltrane-et-parametres

https://intranet.insee.fr/jcms/5569037_DBWikiPage/documentation-des-outils-/-guides-utilisateurs-/-circuits

## Contribuer

Le site utilise [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) (lui même bâti sur [MkDocs](https://www.mkdocs.org/)).

Les pages sont de simples documents Markdown, la navigation est générée à partir de l'arborescence des dossiers et fichiers sous `/bowiedocs`.

### Mise en place des outils

#### Sur son poste

#### Sur le datalab

F1 terminal

curl -sSL https://install.python-poetry.org | python3 -

export PATH="/home/onyxia/.local/bin:$PATH"

poetry --version

=> écrire script

#### Utiliser MkDocs

git clone Bowie

cd Bowie

git switch <la branche>

poetry install

cd /bowiedocs

poetry run mkdocs serve

poetry run mkdocs build

mv site ../docs