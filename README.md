# Rails Task for COS30041 
This repo is a code dump for tasks in my uni. Its sheer purpose is to enable me to work on the same project across different devices, like you know, school lab's bloody computers.

# Software Requirements
Not really requirements, just the versions of softwares that I'm using which are working

* [Ruby 2.4.1](https://www.ruby-lang.org/en/downloads/)
* [Gem 2.6.12](https://rubygems.org/pages/download) (should automatically installed when you installed ruby)

# Running the Application
Assuming you are running on Ubuntu (because that's what I'm running, and I think most unix will run fine as well) and had the stuff above installed, you should first, obviously, clone the repository:
```
git clone git@github.com:tzhongyan/rails-exercise.git
```

Then, change your working directory into the repository:
```
cd rails-exercise
```

Install the required gems, this might take a while if no previous rails has been installed.
```
bundler install
```
If you do not have bundler, perform `gem install bundler` and perform the same shit again.

Migrate and seeding the database:
```
rake db:migrate
rake db:seed
```

Then you are free to run the shit
```
rails server
```

The thing will be running on http://localhost:3000 on rails default. Obviously, before serving you should put it into proper environment and stuff. Go google it if in doubt :3

# Tests
Test? What test?

# Important Tags
- **t6-finished**: Marks the finishing point for all of Task 6
- **task-7.1**: Marks the finishing point for Task 7.1
- **task-7.2**: Marks the finishing point for Task 7.2
