# Pimp my Gossip Project

Yo les devs / correcteurs !

Bon, vu les heures qu'on a tous passé pour débugger ce giga dossier Rails ici présent, je me dis que cela mérite bien un petit gif des familles ❤️

![](https://media.giphy.com/media/5rmGFLNTFpYuA/source.gif)

(oui j'étais fan de Gossip Girl à l'époque, et j'assume comme jaja)

Bwef, voici ci-dessous quelques infos sur ce qui vous attend :

* Homepage avec tous les potins sans exception, mais pas d'histoire de scroll infini à la Facebook, on va pas déconner non plus 😬
* Quelques liens de navigation bien qualitatifs, accessibles via la homepage.
* Des pages potins où tu peux lâcher tes com's 🔥
* Des pages profils, pour le plaisir inouï de stalker "Noah, de Dunkerque", certifié 100% fake.
* Des pages ville où les bots se mettent ensemble pour ragoter les b******
* Et bien plus encore !
* ... En vrai non pas plus lol, il est tard et je suis pas allé plus loin 😭
* MAIS, pour me faire pardonner, sachez que :
  * Je pense avoir capté l'affaire des sessions, logins toussa toussa.
  * J'ai fait le projet 100% en solo (même si j'ai picoré dans des repos à droite à gauche.)
  * J'ai quand même conçu un favicon pour ce fake site lol
* Bisous les devs 😁


## Le setup qui va bien

1. Cloner le repo ou dl le dossier .zip
   ```
   $ git clone https://github.com/kentsbrockman/gossip_project_QPlaud.git
   ```

2. Attention, par mondanité je suis resté sur Rails 6 🕺, ce qui implique les commandes suivantes
```$ rvm gemset create rails6
$ rvm gemset use rails6
$ gem install rails -v 6.0.3.4
```
Sans oublier le bundle install qui fait plaisir ❤️

3. Derniers bails pour initialiser le BDD
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails server
```

4. Go sur "http://localhost:3000/gossip_project/home" pour kiffer ta life 🔥