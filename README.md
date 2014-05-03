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

* Generate an Event model and controller.  Verify CRUD operations and change route to point to the root of the events controller.
* Generate a Question model and controller.  Verify CRUD operations and then link the detail pages of an Event to a question model.
