class DiceController < ApplicationController
  def flex
    @num_dice =  params.fetch(:number_of_dice).to_i

    @sides = params.fetch("number_of_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    render ({ :template => "templates/flex"})
  end

  def home 
    render ({ :template => "templates/home" })
  end

  # not dynamic
  # def twosix
  #   @rolls = []
  #   2.times do 
  #     die = rand(1..6)
  #     @rolls.push(die)
  #   end
  #   render ({ :template => "templates/two_six"})
  # end
end
