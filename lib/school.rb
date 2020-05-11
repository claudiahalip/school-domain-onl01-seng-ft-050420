
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
    @roster.values_at(grade).flatten
    
  end
  
  def sort
    @roster.each do | garde, names |
      names.sort
    end
      
    @roster
    
    
  end
  
  
end