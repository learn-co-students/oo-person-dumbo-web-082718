# require 'pry'
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, bank_account = 25, happiness= 8, hygiene = 8)

    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene

  end

  def happiness=(points)
    if points <= 0
      @happiness = 0
    elsif points >= 10
      @happiness = 10
    else
      @happiness= points
    end
  end

  def hygiene=(points)
    if points <= 0
      @hygiene = 0
    elsif points >= 10
      @hygiene = 10
    else
      @hygiene= points
    end
  end


  def clean?
    if self.hygiene >7
      true
    else
      false
    end
  end

  def happy?
    self.happiness
    if self.happiness >7
       true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend = Person.new(name))
    self.happiness+=3
    friend.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend = Person.new(name), topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness +=1
      friend.happiness +=1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
