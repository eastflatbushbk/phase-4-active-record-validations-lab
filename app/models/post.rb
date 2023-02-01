class Post < ApplicationRecord
    validates :title,  presence: true , exclusion: {in: (['True Facts'])}
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: (['Fiction', 'Non-Fiction'])}

    # validate :clickbait?

    # REG_PATTERN = [
    #     /Won't Believe/i,
    #     /Secret/i,
    #     /Top \d/i,
    #     /Guess/i
    #   ]
    # def clickbait?
    #     if REG_PATTERN.none? {|pat| pat.match title}
    #         errors.add(:title, "must be clickbait")
    #     end  
    # end
    
end
