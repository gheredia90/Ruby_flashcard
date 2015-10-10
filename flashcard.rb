class FlashCard
    attr_reader :question, :answer

    def initialize (question, answer)
        @question = question
        @answer = answer
    end

    def question_and_answer(index = nil)

        input2 = ""

        puts "#{index} #{question}"

        input = ' '
        answer2 = answer.to_s

        while input != answer2
            input = gets.chomp 
        end
        puts @answer
    end

    
end