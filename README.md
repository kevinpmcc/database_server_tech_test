Database server tech test
----------
The project brief is
"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file."


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



Example
--------

In the first image I set the initial key value pair as pleaseletitwork and
yesitdoes.   


![set](https://cloud.githubusercontent.com/assets/15851529/19440536/254fb49e-947a-11e6-9ec1-56c62cb89c8a.png)


I then retrieve the initial value by going to get with key value pair of key and
pleaseletitwork. This returns 'yesitdoes'  
![get](https://cloud.githubusercontent.com/assets/15851529/19440534/227be8dc-947a-11e6-8c38-5a53b0492fbf.png)
Database server tech test
Today we will practice a tech test to demonstrate your understanding of web technologies. This is an actual tech test that was given to one of our coaches when they applied for a dev role.

Bear in mind that most tech tests do not have a set timeframe. Although we do have a "soft" time limit, imposed mainly by the structure of the week, we are not expecting you to finish within the day - so take your time and focus on writing the best code you can produce.


Approach Taken
-------

Spiking

Initially I wanted to investigate how the key-value pairs would come through in
the params. I spiked(no tests) for a while to see what these looked like. They
came through as a hash {"somekey": "somevalue"} however could not be simply
stored as they were. I tried out creating new objects using the key and value as
initilization parameters. This can all be found on the spiking branch. 

Using Sessions
The simplest way of storing the information seemed to be to use sessions. I
wrote two feature tests (one to set, one to get) and then set the session key as
the params key and session value as params value. 

This solution worked but in terms of extending and bringing in databases and
writing to files I don't know how much this would help us get there.

Using Objects
I created a Something class (unsure of what these key value pairs actually were)
which could be created with a key and a value. 

I wrote unit tests to make sure this class could be initialized with the values
and then return them.

In my mind I would be able to find things similar to Database ActiveRecord.

