# Decker
Decker helps you create interactive HTML5 slide decks, allowing the audience to both follow along and participate in the presentation from their mobile device.

## What?
Here, just watch this 2 minute video: https://vimeo.com/89004064


## Disclaimer
Right now it's too soon to call this a library or anything, it's just a single afternoon hack I made to learn WebSockets. I'm putting it out there to gauge interest - if you'd like to help work on it, get in touch!

## What can I do with it?
Well, right now it's in the afternoon hackathon/proof-of-concept stage, but here's where I'm looking to go:

* Let the audience follow the presentation on their mobile device
* Show polls to users and update data visualizations in the presentation in real-time based on responses
* Send extra content to mobile devices (e.g. the deck translated into another language, information tailored to each user, etc)
* Allow users to login with e.g. Twitter to add content directly into presentation

## How does it work?
Through [WebSockets](http://www.html5rocks.com/en/tutorials/websockets/basics/)! These cool little pieces of javascript magic allows for instantaneous and continuous communication between the presentation and the audience.

### Implementation
Specifically, this proof-of-concept uses several libraries, each of which could be swapped out given a little more time:

* [Ruby on Rails](http://rubyonrails.org/) - Rails is great for quickly knocking out a prototype, but it's overkill for this project seeing as it doesn't need an entire MVC framework. Moving to node.js probably makes the most sense.
* [WebSocket-Rails](https://github.com/websocket-rails/websocket-rails) - a quick and easy way to get a WebSocket server up and running, but again - probably overkill. We can just use WebSockets directly.
* [stack.js](https://github.com/mbostock/stack) - a little library by Mike Bostock for quickly building a slide deck. I've modified it a bit to allow for custom events, but we should probably move to [Reveal.js](https://github.com/hakimel/reveal.js) instead to allow for more control.
* The slides in the demo use [d3js](https://github.com/mbostock/d3), [TopoJSON](https://github.com/mbostock/topojson) (both also by Mike Bostock - man, that guy does everything!), and [Google Maps Javascript API](https://developers.google.com/maps/documentation/javascript/) but those are all just for slide content.

## Is there a demo?
Just clone this repo and run `rails s`! The following urls should then be active:

* [http://localhost:3000/presenter](http://localhost:3000/presenter) - this is the main slide deck
* [http://localhost:3000/audience](http://localhost:3000/audience) - this is the audience's view
* [http://localhost:3000/electric-sheep](http://localhost:3000/electric-sheep) - control "replicants" to test out what the deck will be like with a large audience!
