class Book < ApplicationRecord

    validates :title, :author, :price, :published_date, presence:true, allow_blank: false

end
