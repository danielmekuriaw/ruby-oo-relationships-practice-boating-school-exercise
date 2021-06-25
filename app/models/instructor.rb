class Instructor

    @@all = []
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passed_students

        temp = BoatingTest.all.select{
            |boating_test| boating_test.instructor == self
        }
        
        if !temp[0].nil?
            temp.select{
                |boating_test| boating_test.status == 'passed'
            }.map{
                |boating_test| boating_test.student
            }
        else
            temp
        end
        
    end

    def pass_student(student, test_name)
        temp = BoatingTest.all.select{
            |bloating_test| bloating_test.student == student
        }.select{
            |bloating_test| bloating_test.name == name
        }

        if temp[0].nil?
            return BoatingTest.new(student, test_name, 'passed',self)
        else
            return temp[0].status = 'passed'
        end

    end

    def fail_student(student, test_name)

        temp = BoatingTest.all.select{
            |boating_test| boating_test.student == student
        }.select{
            |boating_test| boating_test.name == name
        }

        if temp[0].nil?
            return BoatingTest.new(student, test_name, 'failed',self)
        else
            return temp[0].status = 'failed'
        end    
    
    end

    def all_students

        BoatingTest.all.select{
            |boating_test| boating_test.instructor == self
        }.map{
            |boating_test| boating_test.student
        }

    end

end
