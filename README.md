# GapFish Coding Challenge

## About
In this challenge, I focused on creating a simple, clean, and scalable URL shortener. For this I used SQLite in development and PostgreSQL in production due to SQLite's bootstrapping nature - however, the security of PostgreSQL is more suited for production. 

## How to run
Locally: 
```bash 
rails db:migrate
```
Then, open [http://localhost:3000/](http://localhost:3000/) and enter your long URL to be shortened. The shortened versions as well as the original URLs are displayed and linked.


[Direct link to Heroku deployment](http://url-shortener-gapfish.herokuapp.com/)


# Future improvements and thoughts 

* In my sanitize method, I create a unique ID for the shortened URLs to prevent accidental duplication. 
* I would like to find a way to make this ID somewhat reflect the content of the original URL and not be totally random.
* Eventually, I could add user profiles in order to monetize certain features like custom URLs and save non-expiring links. 