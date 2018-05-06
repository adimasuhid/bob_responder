# Bob Responder

Simple chat bot that responds with a given set of responses


## Problem

This is a simple evaluation problem. You'll code Bob, a simple message responder as follows:

- Bob answers 'Sure.' if you ask him a question.
- He answers 'Woah, chill out!' if you yell at him (ALL CAPS).
- He says 'Fine. Be that way!' if you address him without actually saying anything.
- He answers 'Whatever.' to anything else.
- Write tests to asset the above is working correctly.

**NOTE**: Do not use "if", "unless" or "case" in your response code.

## Usage

```
require 'bob_responder.rb'

BobResponder.hey("Tom-ay-to, tom-aaaah-to.") #=> "Whatever."
BobResponder.hey("Does this cryogenic chamber make me look fat?") #=> "Sure."
```
