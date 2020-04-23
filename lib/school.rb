require 'pry'

class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    # add_student add multiple students to same grade
    def add_student(student_name, grade)
        # check if roster hash already has a key
        if @roster[grade]
            # if so shovel student to it 
            @roster[grade] << student_name
        else
            # if not so assign that grade equals to array that contains student name
            @roster[grade] = [student_name]
        end 
    end
    
    # return an array of students in the (same) grade
    def grade(grade)
        @roster[grade]    
    end

    # return the whole roster hash with grade keys and arrays of students' names sorted in order
    def sort
        @roster.each do |grade, student_name|
            student_name.sort!
        end
    end
end