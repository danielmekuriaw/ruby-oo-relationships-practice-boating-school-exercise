class BoatingTest

    attr_accessor :student, :name, :status, :instructor

    @@all = []

    def initialize(student, name, status, instructor)
        @@all << self
        @student = student
        @name = name
        @status = status
        @instructor = instructor
    end

    def self.all
        @@all
    end

end
