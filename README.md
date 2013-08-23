Ruby Fridays
===========

The material covered at Ruby Fridays for Girl Geek Kampala.

What is Ruby?
-------------

[Ruby](http://en.wikipedia.org/wiki/Ruby_(programming_language) is a programming language written in the mid-1990s by Yukihiro "Matz" Matsumoto.

Ruby is known for having a strong developer community, who have a particular focus on clean, beautiful code.

Installing Ruby (and Rails)
---------------------------

Windows or Mac:
* Use [Railsinstaller](http://railsinstaller.org/)

Linux:
* Install [RVM](https://rvm.io/rvm/install)
* `gem install bundler`
* `gem install rails`

Getting started
--------------

Once you have Ruby installed, the easiest way to get started is with irb.

    $ irb

    > 1 + 1
     => 2

    > [1, 2, 3].first()
     => 1

irb stands for "interactive Ruby", and gives you a way to immediately see the results of running snippets of Ruby. The snippet above shows someone entering irb, adding one plus one, and being given the result. Then they ask what the first element is of a list of three numbers. 

Whenever you see `$` at the start of the line, that means you're at the command line. `=>` means that irb is printing a result. Whenever you see `>` that means you're in irb. To exit, type `exit`.

    > exit

    $

To load a whole Ruby file, do the following:

    $ irb

    > load("week01.rb")

Installing Git
--------------

Git is a version control system that helps you keep track of changes to your code and to collaborate with other developers.

[Instructions for installation](http://git-scm.com/book/en/Getting-Started-Installing-Git)

Further reading
---------------

* [Why's poignant guide to Ruby](http://mislav.uniqpath.com/poignant-guide/) is a graphic novel that is funny, touching, and all about Ruby.
* The [online documentation](http://ruby-doc.org/core-1.9.3/)

Fun
---

* [Ruby koans](http://rubykoans.com/) - puzzles that teach you facts about Ruby.

