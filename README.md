Back-End Web Development
============================

![](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")


##Welcome BEWDiful Students

This is your course repository. You will use this to get all your course materials and some additional stuff too!

During your first course we will teach you how to work with this thing called GitHub. 


# Setup

##Apple Mac Users 

1.  __Make sure you have an apple ID__ (you should already have one). 

2.  __Xcode installed?__
  *  Go to step 4

3.  __Xcode not installed?__ 
  *  Go to: [https://developer.apple.com/downloads/index.action](https://developer.apple.com/downloads/index.action)
  *  Log in with your Apple ID and password (same as iTunes).
  *  Install Command Line Tools for your operating system.
  *  Check install: ```$ gcc --version```


4.  __Install homebrew from terminal:__
  *  ```$ ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)```
  *  After install is complete: ```$ brew doctor```
    *  __If you get following error:__ 
    
        "Warning: Experimental support for using Xcode without the "Command Line Tools".
    
    Go back to step 1.


5.  __Install Git__
  *  ```$ brew update```
  *  ```$ brew install git```
  *  Check install:
    *  ```$ which git```
      *  should get:   
        /use/local/bin/git

6.  __Configure Git with your Name and Email__
  *  Make sure you use the same email address for Git, GitHub, and Heroku.

7.  __Install RVM with Ruby 2.0.0__
  *  ```$ \curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable```
    This will take a few minutes, and once it’s done, quit and relaunch Terminal, then run this command:
  *  ```$ type rvm | head -1```
    If you get rvm is a function, that means RVM was successfully installed. 
  *  Make sure the latest versions of RVM, Ruby and Rails were installed, run the commands below:
    *  For RVM
      *  ```$ rvm -v```
        
        You should get 

          rvm 1.20.0 or higher.
    *   For Ruby

      *  ```$ ruby -v```
      
        You should get 

          ruby 2.0.0p0 or higher.

    *   For Rails

      *  ```$ rails -v```
        
        You should get 
        
          Rails 4.0.0 or higher.


Note: Install instructions credit to: [Moncef Belyamani](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/#step-1
)
##Windows Users

Ruby Installer:

To get started you are going to use the Rails installer by rubyinstaller.org, and then schedule time with the instructional team to upgrade your Ruby and Rails versions after class.


*  Go to [http://railsinstaller.org/](http://railsinstaller.org/).
*  Grab the 1.9 version (we will upgrade later). This will set up your environment and you can start working with git right away.
    

__Extra command line tools: __
  
We will be using the command line a lot during this course. On Windows we also suggest installing gow. Gow is a bunch of unix command line tools ported to Windows. It will make it easy to follow in class with the same commands as your Mac buddies. https://github.com/bmatzelle/gow/wiki


##Happy Coding :)

__You're ready for the first class.__



### Strongly Suggested Hardware/Software
Most web developers, including our instructional team, use Macs to do their development. We want you to get used to using these tools and will be able to provide the most support for you if you use them too.

* Computer: **Mac**
* Operating System: **OSX Mountain Lion**
* Text Editor: **Sublime Text 2**
* Internet Browser: **Google Chrome**



