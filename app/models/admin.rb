class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
end
