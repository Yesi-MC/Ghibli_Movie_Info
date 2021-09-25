# Ghibli Movie Info

This web app consumes a RESTful API for Ghibli Movie info. This application is built in Rails, it refactors the API call out of the controller into a facade and service. It also converts the API's response into a Ruby Object that we use in our views. 

### Table of Contents
  - [How to Install Application](#how-to-install-application)
  - [How to Use Application Hosted on Heroku](#how-to-use-application)
  - [Testing](#testing)
  - [Licenses](#licenses)
  - [Contact](#contact)

## How to Install Application

For usage on your local machine, in your terminal navigate to a directory to store this application and run the instructions listed below:

```
git clone git@github.com:Yesi-MC/Ghibli_Movie_Info.git
cd Ghibli_Movie_Info
bundle install
rails s
Open localhost:3000 in your web browser
```

## How to Use Application Hosted on Heroku

You can use [the Ghibli Movie Info App here](https://ghibli-movie-details.herokuapp.com/).

Once this application is open in your web browser, you can click on the 'View Movies' button, which will diplay all Ghibli movies. 

Each movie title is a clickable link that will take you the movie show page and can view more specific details about the movie.  


## Testing

* For testing I used RSpec

> RSpec is a tool for unit testing that will ensure we have the intended functionality at each level of our code.

* In order to run the tests, run `bundle exec rspec` in the command line and you should have all passing tests.
  
## Licenses

  * Ruby 2.5.3
  * Rails 5.2.4.4

## Contact

#### Yesi Meza: [LinkedIn](https://www.linkedin.com/in/yesimeza), [Email](mailto:yesi.meza10@gmail.com), [GitHub](https://github.com/Yesi-MC)

<!-- Shields -->
![](https://img.shields.io/badge/Rails-5.2.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)
![](https://img.shields.io/badge/Ruby-2.5.3-orange)