class User < ActiveRecord::Base
  has_many :microposts
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, format: {  with: /[a-z]*@\w{1,7}.\w{1,4}/,
     message: "only this format mail@mail.com" }
  validates :password, presence: true, length: { minimum: 6 }
end
