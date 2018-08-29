# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name,:happiness,:hygiene

  def initialize(name,bank_account=25,happiness=8,hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def hygiene=(clean)
    if clean >10
      clean= 10
    elsif clean < 0
      clean = 0
    end
    @hygiene = clean
  end

  def happiness=(smiley)
    if smiley >10
      smiley = 10
    elsif smiley < 0
      smiley = 0
    end
    @happiness = smiley
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    if @hygiene > 10
       @hygiene = 10
    else
      @hygiene
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    if self.happiness > 10
      self.happiness = 10
    end
    if self.hygiene < 0
      self.hygiene = 0
    end
"♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    if friend.happiness > 10
      friend.happiness = 10
    end
    if self.happiness > 10
      self.happiness = 10
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(person,topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      if person.happiness < 0
        person.happiness = 0
      end
      if self.happiness < 0
        self.happiness = 0
      end
    return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      if person.happiness > 10
        person.happiness = 10
      end
      if self.happiness > 10
        self.happiness = 10
      end
      return "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
