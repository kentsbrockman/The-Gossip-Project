class PrivateMessage < ApplicationRecord
  has_many :SyncPrivateMessageUsers
  has_many :receivers,through: :SyncPrivateMessageUsers,source: :user
  belongs_to :sender, class_name: "User"
end
