Database server tech test
----------
This project is a webserver which takes in key  game.



Technologies used
-----------
I used Ruby with the Sinatra framework.
I used Rspec with Capybar for testing.

Installation Instructions
-------
start by cloning this repository.   
In terminal or other Command line tool put in the below

<code>git clone https://github.com/kevinpmcc/database_server_tech_test.git</code>

next move into the project folder by entering

<code>cd database_server_tech_test</code>

If you know you have bundler installed skip this step. If you're unsure add
<code>gem install bundler</code>

install all dependencies
<code>bundle install</code>

to run tests
<code>rspec</code>

to manually test
<code>ruby app.rb</code>

In your browser of choice go to <code>localhost:4000/set?<b>somekey</b>=<b>somevalue</b></code>
(you can replace the bolded text with whatever you like)

To retrieve your value go to <code>localhost:4000/get?key=<b>somekey</b></code>


![set](https://cloud.githubusercontent.com/assets/15851529/19440534/227be8dc-947a-11e6-8c38-5a53b0492fbf.png)

![get](https://cloud.githubusercontent.com/assets/15851529/19440536/254fb49e-947a-11e6-9ec1-56c62cb89c8a.png)
Database server tech test
Today we will practice a tech test to demonstrate your understanding of web technologies. This is an actual tech test that was given to one of our coaches when they applied for a dev role.

Bear in mind that most tech tests do not have a set timeframe. Although we do have a "soft" time limit, imposed mainly by the structure of the week, we are not expecting you to finish within the day - so take your time and focus on writing the best code you can produce.

#The brief

You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file."

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.
