# The Gossip Project

Hello dear devs!

It is my pleasure to introduce you to my first project realized entirely with the **Ruby on Rails framework** 😁

Affectionately called "The Gossip Project", the idea of this app is to have a **mini social network** where you want to sign up and log in to be able to post content in the form of gossips, comment and like those of other users.

---

## Features

Here are some infos about what is waiting for you:

* A homepage with some gossip content available straight (thanks database seeding ❤️)
* A bunch of static nav links, accessible via the homepage.
* Dynamic gossip pages where you can drop comments and likes 🔥
* Profile pages, for the immeasurable pleasure to stalk "Noah, from Dunkerque city", certified 100% fake.
* City pages, where the profiles get together to gossip, because why not?

---

## Setup

You can test the website live on [Heroku](https://kents-gossip-project.herokuapp.com/).

Or, if you do use Ruby and Ruby on Rails already, it'd be pretty quick to run the app locally:

1. Download the .zip folder or clone this repo:
```
$ git clone https://github.com/kentsbrockman/The-Gossip-Project.git
```

2. Get to the root folder:
```
$ cd The-Gossip-Project
``` 

3. Install the required Ruby gems:
```
$ bundle install
```

4. Initialize the database and the server locally: 
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
rails server
```

5. Go to http://localhost:3000/gossip_project/home to test it out 🔥

---

Have a nice day out there!