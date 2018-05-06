require_relative '../bob_responder.rb'

describe BobResponder do
  describe '.hey' do

    it "stating something" do
      expect(BobResponder.hey("Tom-ay-to, tom-aaaah-to.")).to eq "Whatever."
    end

    it "shouting" do expect(BobResponder.hey("WATCH OUT!")).to eq "Whoa, chill out!"
    end

    it "asking a question" do
      expect(BobResponder.hey("Does this cryogenic chamber make me look fat?")).to eq "Sure."
    end

    it "talking forcefully" do
      expect(BobResponder.hey("Let's go make out behind the gym!")).to eq "Whatever."
    end

    it "talking in capitals" do
      expect(BobResponder.hey("This Isn't Shouting!")).to eq "Whatever."
    end

    it "asking in capitals" do
      expect(BobResponder.hey("THIS ISN'T SHOUTING?")).to eq "Sure."
    end

    it "shouting numbers" do
      expect(BobResponder.hey("1, 2, 3 GO!")).to eq "Whoa, chill out!"
    end

    it "shouting with special characters" do
      expect(BobResponder.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")).to eq "Whoa, chill out!"
    end

    it "shouting with no exclamation mark" do
      expect(BobResponder.hey("I HATE YOU")).to eq "Whoa, chill out!"
    end

    it "statement containing question mark" do
      expect(BobResponder.hey("Ending with ? means a question.")).to eq "Whatever."
    end

    it "silence" do
      expect(BobResponder.hey("")).to eq "Fine. Be that way!"
    end

    it "prolonged silence" do
      expect(BobResponder.hey("  ")).to eq "Fine. Be that way!"
    end

    it "question with numbers" do
      expect(BobResponder.hey("4?")).to eq "Sure."
    end

    it "shouting in Russian" do
      expect(BobResponder.hey("УХОДИ")).to eq "Whoa, chill out!"
    end
  end
end
