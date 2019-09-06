# README

## Install (nothing special)

- `git clone https://github.com/APuck003/test_app`
- Make sure your Ruby environment is set up and configure `database.yml` to point to your MySQL instance for development.
- Run `bundle install` as you do.
- Setup the database `rails db:setup`
- Install javascript dependencies `yarn install`
- run with `rails s`

## Instructions

This is a coding exercise to see you write code to implement a feature in Rails.

Routes, empty controllers, and empty views have been created for you. You are to create the models and db migrations, and make the views and controllers functional.

Created using https://materializecss.com/ -- if you want to make your submission look nice, these components should plug in easily. (Not Required)

## What to Implement

As a system administrator of a customer facing application

I want to be able to create and configure surveys

So that I can administer surveys

*NOTE this is only asking for the ability to configure a survey. The ability for a customer to respond to a survey is not required.*

Acceptance Criteria:

- ability to create/edit surveys
- surveys have a name
- surveys can have a due date (optional)
- a survey consists of multiple questions:
  - a question has question text
  - questions can be either Free Response or Fixed Response
  - Free Response are questions where a customer would respond with a text input
  - Fixed Response are questions where a customer would select an answer from a dropdown
- ability to create/edit questions for a given survey
- ability to create/edit the list of available responses with the question (for Fixed Response)
- ability to specify the order of questions for a given survey

## Checklist

- [ ] list surveys on surveys index route `/surveys`
- [ ] create a new survey
- [ ] edit an existing survey
- [ ] list questions for a survey on survey questions index route `/surveys/:survey_id/survey_questions`
- [ ] create a new survey question tied to a survey
- [ ] edit an existing survey question tied to a survey
# test_app
