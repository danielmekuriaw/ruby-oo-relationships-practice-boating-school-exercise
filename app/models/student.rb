class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end
        
    def add_boating_test(test_name,status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.select{
            |student| student.first_name == first_name
        }[0]
    end

    def grade_percentage

        all_tests = BoatingTest.all.select{
            |bloating_test| bloating_test.student == self
        }

        total = all_tests.size

        passed_tests = all_tests.select{
            |atest| atest.status == 'passed'
        }

        score = passed_tests.size

        return score.to_f*100/total

    end

    def all_instructors
        BoatingTest.all.select{
            |boating_test| boating_test.student == self
        }.map{
            |boating_test| boating_test.instructor
        }
    end

end
