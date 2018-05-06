module BobResponder
  def self.hey(message)
    message.match(/^[\s]*$/)   { return "Fine. Be that way!" }
    message.match(/.*\?$/)     { return "Sure." }
    message.match(/^[^a-z]+$/) { return "Whoa, chill out!" }

    "Whatever."
  end
end
