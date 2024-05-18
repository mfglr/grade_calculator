module Lib
    class InvalidScoreExceptin < Exception
        def initialize(score)
            super("Invalid score(#{score})!")
        end
    end
end