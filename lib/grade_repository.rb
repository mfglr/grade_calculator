require "json"
require_relative 'grade'

module Lib
    class GradeRepository
        
        def initialize(file_name)
            @file = File.read(file_name)
        end

        def get_all_grades
            JSON.parse(@file).map {|item| Grade.new(item["id"],item["score"])}
        end

    end
end