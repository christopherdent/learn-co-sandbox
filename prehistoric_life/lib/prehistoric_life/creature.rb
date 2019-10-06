  
require 'pry'


class PrehistoricLife::Creature
  attr_accessor :name, :type, :diet 
  
  @@all = [] 
  def initialize(name)
    @name = name 
     
    save 
  end 
  
  def self.all
    @@all 
  end 

  def save 
    @@all << self 
  end 
  
  def roar 
    puts "#{self.name} goes Roar!"
  end 
  
  
  def fun_fact
    case @name 
      when "Eoraptor"
        puts "I eat meat!"
      
      when "Procompsognathus"
        puts "I eat meat and I'm g onna show you a fun fact."
        
      when "Coelophysis"
        
      when "Shonisaurus"
      
      when "Saltopus"
      
      when "Stegosaurus"
        
      when "Brachiosaurus"
        
      when "Fabrosaurus"
        
      when "Liopleurodon"
        
      when "Allosaurus"
        
      when "Tyrannotitan"
        
      when "Aardonyx"
      
      when "Apatosaurus"
      
      when "Tyrannosaurus"
        
      when "Brachiosaurus"
        
      when "Parasaurolophus"
        
      when  "Oviraptor"
        
      when "Spinosaurus"
        
      when "Therizinosaurus"
        
      when "Ankylosaurus"
      
      when "Styracosaurus"
      
        
      end 
    
  end 
    
  
  def diet 
    
  end 
  
end 

 