class User < ApplicationRecord
    has_many :chat_rooms
    has_many :messages
    validates :username, presence: true, uniqueness: true
end