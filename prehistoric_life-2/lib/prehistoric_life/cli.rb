 
require 'pry'
class PrehistoricLife::CLI
  attr_accessor :creature 

  def initialize
    @creature = creature 
  end 

  def call 
     puts "Welcome to Prehistoric Life - Creatues of the Mesozoic!"
     puts "You'll select an animal by geological period and learn a fun fact about that animal."
     get_period
     #going to want a method like def get_period.
     #Then going to want to get the animals... get_animals(period)
     #Then list the animals 
     #Then ask user to choose an animal 
  end 

  def get_period 

   triassic = PrehistoricLife::Period.new("Triassic")
   jurassic = PrehistoricLife::Period.new("Jurassic")
   cretaceous = PrehistoricLife::Period.new("Cretaceous")
   @periods = PrehistoricLife::Period.all  
      
    puts "Please choose your time period:"
      @periods.each_with_index do |period, index|
      index += 1
      puts "#{index.to_i}. #{period.name}"
      @periods = ["Triassic (250-206 million years ago)", "Jurassic (206-144 million years ago)", "Cretaceous (144-65 million years ago)"]
      puts "Please choose your time period:"
      
    @periods.each_with_index do |period, index|
        index += 1
        puts "#{index.to_i}. #{period}"
      end 
    
    period = gets.strip
    
      if period == "Triassic" || period == "1"
        show_triassic_creatures
      elsif period == "Jurassic" || period == "2"
        show_jurassic_creatures 
      elsif period == "Cretaceous" || period == "3"
        show_cretaceous_creatures 
      else 
        puts "Please try again."
        get_period
      end
  end 


  def show_triassic_creatures

    puts "These are a few of the major animals from the Triassic period."  
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Scraper.triassic_scraper  #you need to link the index from this to the next line somehow 
    input = gets.strip 
    PrehistoricLife::Creature.all.each.with_index do |creature|
      creature.roar 
      creature.fun_fact 
    end 
      #if input == 1
    puts "These are a few of the major animals from the Triassic period."
    #PrehistoricLife::Triassic.all.each do |animal|
    #puts animal.name 
  end 
    
  def show_jurassic_creatures 
    puts "These are a few of the major animals from the Jurassic period."
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Scraper.jurassic_scraper
  end
    
  def show_cretaceous_creatures
     puts "These are a few of the major animals from the Cretaceous period." 
     puts "Select one to learn a fun fact!"
     PrehistoricLife::Scraper.cretaceous_scraper
  end
    



 
end 

 