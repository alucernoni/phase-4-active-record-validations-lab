class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    # validate :clickbait

    # def clickbait
    #     title_strings = ["Won't Believe", "Secret", "Top [number]" "Guess]
    #     if 
    #         title.include?[title_strings] = false
    #             errors.add(:title, "must be more clickable!")
    #     end
        
    # end

end
