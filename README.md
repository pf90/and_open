# Challenge

Using Ruby on Rails, create a new application to fulfil the below requirements for a basic social networking site. The pages do not need to be beautiful or styled at all, though bonus points if they are.

1. I can create a "Member" by entering a name and their website address/URL.
2. Members can be friends with other members. Friendships are bi- directional (i.e. if A is friends with B, then B is friends with A).
3. In order to help members figure out how to be introduced to other members, add a member search function to a member’s profile page, matching on member first name or last name. Perform this search in the context of the member (i.e. avoid returning the same member in results) and enhance the search results here to output the shortest path from the member to the search result members (e.g. if C is a result when searching from member A’s profile page, then A -> B -> C might be the shortest path).
4. The member website URL should be shortened (e.g. using https://bitly.com) before being stored. The original should also be stored.
5. When a member is added, all the headings (h1-h3) on their website should be retrieved and stored.

6. Answer tecnhical questions

# Instructions

* Clone the https://github.com/pf90/and_open and run `bundle install`.

* Setup the database with `bundle exec rake db:migrate`.

* Seed the database with sample data by running `bundle exec rake db:seed`.

* Start the server with `rails s`.

* On the home page you should see three members added already. You can then add further members, add friendships between members or edit members

* The answers.txt file contains the responses to the technical questions.

# A paragraph about implementation

I believe this is a simple yet well structured solution to the challenge presented given the time frame and purpose of the exercise. With seperate models for Members, Matches & Headers, I believe it establishes a solid foundation which could support development going forward. 

Assumptions
* There was no mention of authentication therefore I have not done so. So essentially the site is fully open for anyone to add/remove any members or friendships between members. 

* The bitly API requires signup to function as far as I can tell, therefore I signed up to the free version and have included the API in the code as opposed to keeping it separate in a dot_env file. 

* Requirement 1 mentions name, requirement 3 mentions first and last name. I have only added one field for name. 

While I am quite satisfied with the solution, I do acknowledge its shortcomings due to time pressure in terms of 

* Testing 

* Design & UI

* Setting up background jobs to scrape the heading data

* Refactoring partials

* Authentication as referenced above. 

These among others are items I would rectify going forward. 
