# ACB Calculator

The live ACB Calculator can be found at
[http://www.acbcalc.com](http://www.acbcalc.com)

## Description

The ACB Calculator is a web app intended for use by medical professionals to
give an overall score of Anticholinergic Burden (ACB) of a patient, after
entering all the patients' medication.

The app provides both medical terms and popular brand names of medicines to be
selected. Each medicine has an ACB score, and if the total of all scores entered
is more than, or equal to three, the user is warned of the risks involved, and
directed to a guide to reducing this ACB score.

The app also provides a password-protected admin interface to be able to update
medical names, associated brand names, and scores of all medicines included, as
well as to add any new medicines they decide.

The ACB Calculator is the brainchild of Dr. Rebecca King of The Schoolhouse
Surgery, built by Steve Smith, and its logo designed by Alison Collantine of 
[Dreamfly](http://dreamfly.co.uk/)

Update: The app has been highly commended in the 
[Patient Safety Awards 2017](https://awards.patientsafetycongress.co.uk/patient-safety-awards-winners-2017-1)

## Technology

The app is a Ruby on Rails (version 5) project using Ruby version 2.3.0.
Database used is Postgres (0.18).

### Setup Instructions

The setup instructions assume you have knowledge of setting up the correct
verions of Ruby, Postgres and the Bundler gem, which are well documented
elsewhere

1. Clone this repo to your environment

2. Change directory into created directory

  ```
  $ cd acb-calc
  ```

3. Install correct Ruby version if required

4. Run bundler to install all required Gems

  ```
  $ bundle install
  ```

5. Start rails server

  ```
  $ rails server
  ```

6. Navigate to the URL shown to see the app

7. You can sign up an admin user at the path `/users/sign_up`
