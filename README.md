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

##### Users

Administration of the site is done by adding ```admin=1``` to the request URL for any object.  If a more serious security approach is needed, this can be easily implemented.  Otherwise, there are no users.

#### Implementation notes

* [twitter-bootswatch-rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails)
* [bootstrap-datepicker-rails](https://github.com/Nerian/bootstrap-datepicker-rails)
* [markitup](http://markitup.jaysalvat.com/)
* [markitup rails](https://github.com/phlipper/markitup-rails)
* [redcloth](https://github.com/jgarber/redcloth)

