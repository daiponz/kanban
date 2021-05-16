class Card < ApplicationRecord
    #liat : card 1:多
    belongs_to:list
    
    # ==========ここから追加==========
    validates :title, length: { in: 1..255 }
    validates :memo,  length: { maximum: 1000 }
end
