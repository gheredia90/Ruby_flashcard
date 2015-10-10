require './flashcard.rb'

def display_cards(cards)
    cards.each do | card |
       card.question_and_answer(cards.index(card))
   end
end

card0  = FlashCard.new("What does the array.each method do", 1)
card01 = FlashCard.new("How much wood could a wood chuck chuck if a wood chuck could chuck wood", 2)
card1  = FlashCard.new("What does the array.each_with_index method do", 3)
card2  = FlashCard.new("What does the array.map method do", 4)
card5  = FlashCard.new("What does the array.select method do", 5)
card02 = FlashCard.new("What is my favorite food", 6)
card3  = FlashCard.new("What does the array.reduce method do", 7)
card03 = FlashCard.new("Why is the sky blue", 8)

card_list = [card0, 
             card01, 
             card1, 
             card2, 
             card5, 
             card02, 
             card3, 
             card03, 
             ]

# card10 = FlashCard.new("What does the array.each method do", "Iterates through each element in the array and performs an operation on them")

# card01.question_and_answer


new_card_list = card_list.map do | card |

    FlashCard.new(card.question + '?', card.answer)

end

# puts new_card_list

filtered_card_list = new_card_list.select do |new_card|

    new_card.question.include? 'array'

end


display_cards(filtered_card_list)

display_cards(new_card_list)
# display_cards(card_list)