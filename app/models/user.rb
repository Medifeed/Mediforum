class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
         has_many :posts
=======
          has_many :posts
>>>>>>> bb677de0e9fbc2b75809140db1f43af5f205f0ea
end
