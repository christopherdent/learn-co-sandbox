class PrehistoricLife::CLI
  attr_accessor :creature, :period 

  def initialize
    @creature = creature
    @period = period 
  end 

 def dino_art
    puts           "                 __        "
    puts           "                / _)       "
    puts           "       _.----._/ /         "
    puts           "      /         /          "
    puts           "    _/ (  | (  |           "
    puts           "  /__.-'|_|--|_|           "
 end 

  def call 
     puts "Welcome to Prehistoric Life - Creatues of the Mesozoic!".colorize(:yellow)
     dino_art 
     puts "You'll select an animal by geological period and learn a fun fact about that animal.".colorize(:blue)
     PrehistoricLife::Period.new("Triassic")
     PrehistoricLife::Period.new("Jurassic")
     PrehistoricLife::Period.new("Cretaceous")
     get_period
  end 

  def get_period 
    @periods = PrehistoricLife::Period.all  
    puts "Please choose your time period:"
      @periods.each_with_index do |period, index|
      index += 1
      puts "#{index.to_i}. #{period.name}"
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

=begin 
  def show_creatures(period)
    puts "These are a few of the major animals from the #{period} period.  This period was {period.years} ago."
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Scraper.{period}_scraper
  end 
=end 

  def show_triassic_creatures
    puts "These are a few of the major animals from the Triassic period."  
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Scraper.triassic_scraper
    input = gets.strip 
    PrehistoricLife::Creature.all.each.with_index do |creature, index|
      index +=1 
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
        get_period
      end 
    end
  end 
    
  def show_jurassic_creatures 
    puts "These are a few of the major animals from the Jurassic period."
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Scraper.jurassic_scraper
    input = gets.strip 
    PrehistoricLife::Creature.all.each.with_index do |creature, index|
      index +=1 
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
         
      end
    end
    
  end
    
  def show_cretaceous_creatures
     puts "These are a few of the major animals from the Cretaceous period." 
     puts "Select one to learn a fun fact!"
     PrehistoricLife::Scraper.cretaceous_scraper
     input = gets.strip 
     PrehistoricLife::Creature.all.each.with_index do |creature, index|
      index +=1 
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
      end 
    end 
     
     
  end
  
 
  
  
  
  
  
  
end 

 