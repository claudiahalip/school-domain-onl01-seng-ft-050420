
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
    all_sudents_samegrade = []
    @roster.each do | hash_grade, students_array |
      if grade = hash_grade
         return @roster[grade]
      end
    end
  end
  
  def sort
    
    
  end
  
  
end