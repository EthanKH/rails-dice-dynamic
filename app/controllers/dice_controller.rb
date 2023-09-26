class DiceController < ApplicationController
  def twosix
    @rolls = []
    2.times do 
      die = rand(1..6)
      @rolls.push(die)
    end
    render ({ :template => "templates/two_six"})
  end
  

  def home 
    render ({ :template => "templates/home" })
  end
end
