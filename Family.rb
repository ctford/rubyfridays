class Family
 def initialize(persons)
   @people = persons
 end

 def youngest()
   @people.min do |person1, person2|
     person1.age - person2.age
   end
 end

 def member?(person)
   @people.member?(person)
 end
end