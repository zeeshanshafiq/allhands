### All Hands

The purpose of this project is to manage engineering all hands meetings.  Broadly the use cases are:

* Display agends for each upcoming all hands
* Archive existing all hands
* Link to material presented during an all hands
* Provide a forum to ask anonymous questions
* Provide a forum to vote up anonymous questions

#### Models

##### Event

An event is an instance of an all hands meeting.

It compromises of:

* Description
* Date
* Summary
* Tags

An event also has Questions.

##### Question

A Question belongs to an event and represents a query that an attendee may have for the presenter.

It comprises of:

* Question
* Priority

##### User

A User is someone who may administer the system.  The details of the user are defined by the authentication framework.

#### Todo

* Alter event model to have teaser text
* Add markdown display support for description and summary
* Reformat event edit screen
* Add simple admin mode
    * Verify admin mode and non-admin mode works across various event numbers
* Add an email-friendly mode for summaries after the meeting
* Generate a Question model and controller.  Verify CRUD operations and then link the detail pages of an Event to a question model.

#### Implementation notes

* The app makes use of [twitter-bootswatch-rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails)

#### Implementation diary

###### Sat May  3 18:02:54 2014

* Built an Ubuntu VM and deployed it outside of the firewall, externally accessible (via VPN)
* Created a base project on my own personal GitHub
* Integrated the latest Rails 4.1 and integrated Bootstrap 3
* Added simple events controller

Next: Clean up layouts and created a more solid information architecture

###### Sat May  3 23:16:11 2014

* Beautified home page slightly, added icons.

