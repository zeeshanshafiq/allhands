# All Hands

The purpose of this project is to manage all hands meetings.  Broadly the use cases are:

* Display agends for each upcoming all hands
* Archive existing all hands
* Link to material presented during an all hands
* Provide a forum to ask anonymous questions
* Provide a forum to vote up anonymous questions

I've used this solution both at my roles at Upwork and eBay.  Currently, the state of the repository has a skin that is designed to emulate the Upwork website.

## State Machine

Events have two states:  Open and Locked

### Open 

When the event is open, administrators can add details to the event so that people will understand what will be covered.  A typical use case is to add the agenda or link out to documentation outside of the portal.  

In addition, while the even is open users may ask questions or vote up existing questions.  This gives event organizers some flexibility to provide either a pure Q&A meeting or a mix of both Q&A and content.

### Locked 

When the event is complete, the administrator may lock the event.

When the event is locked, the administrator may choose to add a summary of the event.  This might include a transcript of the answers to the questions answered, links to presentations given, or additional information for follow-up.  When the event is locked, no more questions can be add nor can people vote.

Instead, a dialog at the top of the event is presented that allows people to vote whether or not the event was good or bad.  This allows administrators to get a quick sense of if they did a good job or bad job in the form of an NPS.


## Models

### Event

An event is an instance of an all hands meeting.

It compromises of:

* Description
* Date
* Summary
* Tags

An event also has Questions.

### Question

A Question belongs to an event and represents a query that an attendee may have for the presenter.

It comprises of:

* Question
* Priority

## Users

Administration of the site is done by adding ```admin=1``` to the request URL for any object.  If a more serious security approach is needed, this can be easily implemented.  Otherwise, there are no users.

## Relative URLs and proxy configuration

In certain cases, there may be a desire to create separate installations on the same server.  For example, multiple groups may want to have their own instance.  The current implementation is not multi-tenant.  In the meanwhile, there is support for relative URLs which can be used in conjunction with proxies to create a similar effect as a true multi-tenant environment.  

To define a relative URL simply add this key to ```config/secrets.yml```:

```ruby
relative_url_root: "/my_relative_url"
```

An example NGINX proxy configuration is located in [doc/sample_nginx_proxy_configuration](doc/sample_nginx_proxy_configuration).

## Implementation notes

* [twitter-bootswatch-rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails)
* [bootstrap-datepicker-rails](https://github.com/Nerian/bootstrap-datepicker-rails)
* [markitup](http://markitup.jaysalvat.com/)
* [markitup rails](https://github.com/phlipper/markitup-rails)
* [redcloth](https://github.com/jgarber/redcloth)
