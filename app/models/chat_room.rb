class ChatRoom < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_many :messages

  def self.find_or_create_by_user(user1,user2)
    where(sender: user1,receiver: user2).or(where(sender: user2,receiver: user1)).first_or_create(sender: user1, receiver: user2)
  end
end
