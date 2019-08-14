require "pry"

class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif
      topic == "weather"
      self.happiness += 1
      person.happiness +=1
      return "blah blah sun blah rain"
    else
      topic == "other"
      return 'blah blah blah blah blah'
    end
  end



  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return '♪ another one bites the dust ♫'
  end

  def take_bath
    self.hygiene += 4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def happiness
    @happiness.clamp(0, 10)
  end

  def hygiene
    @hygiene.clamp(0, 10)
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

end
