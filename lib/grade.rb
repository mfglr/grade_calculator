require_relative "invalid_score_type_exception"

module Lib
    class Grade
        attr_reader :grade, :score, :id
        
        def initialize(id, score)
            if isInvalidScore?(score)
                raise InvalidScoreExceptin.new(score)
            end
            @id = id
            @score = score 
            @grade = calculateGrade(score)
        end

        def to_s
            "#{@id} => #{@grade}: #{@score}"
        end

        private

        def isInvalidScore?(score)
            score.is_a?(String) || score < 0 || score > 100
        end

        def calculateGrade(score)
            grade = ""
            case score
            when 90...101
                grade = "AA"
            when 85...90
                grade = "BA"
            when 80...85
                grade = "BB"
            when 75...80
                grade = "CB"
            when 70...75
                grade = "CC"
            when 65...70
                grade = "DC"
            when 60...65
                grade = "DD"
            when 50...60
                grade = "FD"
            when 0...50
                grade = "FF"
            end
            grade
        end
    end
end