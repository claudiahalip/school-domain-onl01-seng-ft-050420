
class School
  
  attr_reader :name, :roster, :grade
  
  
  
  def initialize (name)
    @name = name
    @roster = Hash.new { |hash, key| hash[key] = [] }
    
    
  end
  
  def add_student (name, grade)
  
    #roster[grade]=[]
    if @roster.has_key?(grade)
      @roster[grade] <<  name 
    else
      #@roster[grade] 
      
      @roster [grade] << name
    end
    
    
  end
  
  def grade (grade)
    @roster.values_at(grade)
  end
  
  
  
  
  def sort
    sorted_roster = {}
    @roster.each do | garde, names |
      sorted_roster[grade]= names.sort
    end
      
    sorted_roster
    
    
  end
  
  
end