class List < ApplicationRecord
    #user : list 1:多
    belongs_to :user
    
    #list : card 1:多
    has_many :cards, dependent: :destroy
    
    # ここに追加
    validates :title, length: { in: 1..255 }
end
