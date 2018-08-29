require 'pry'

class Person
  attr_reader :name, :bank_account, :hygiene, :happiness
  def happiness=(new_happiness)
   @happiness = new_happiness
   if @happiness > 10
     @happiness = 10
   elsif @happiness < 0
     @happiness = 0
   end
  end

def hygiene=(new_hygiene)
  @hygiene = new_hygiene
  if @hygiene > 10
    @hygiene = 10
  elsif @hygiene < 0
    @hygiene = 0
  end
end

  def initialize(name, bank_account=25, hygiene=8, happiness=8)
    @name = name
    @bank_account = bank_account
    @hygiene = hygiene
    @happiness = happiness
  end

  def bank_account=(new_account)
    @bank_account = new_account
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

end
