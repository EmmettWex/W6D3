class User < ApplicationRecord
    validates :users, :name, presence: true
    validates :users, :email, presence: true
end