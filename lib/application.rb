require_relative "grade_repository"

module Lib
    class GradeCalculator
        def Calculate(file_name)
            file_name = "grades.json"
            repository = GradeRepository.new(file_name)
            repository.get_all_grades()
        end
    end
end

