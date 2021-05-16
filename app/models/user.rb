class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  #User : List 1:多
  has_many :lists, dependent: :destroy#削除時に，関連モデルも削除
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #nameカラムのバリデーション
  validates :name, presence: true, length: { maximum: 20 }
end
