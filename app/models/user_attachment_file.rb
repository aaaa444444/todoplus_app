class UserAttachmentFile < ActiveRecord::Base
  belongs_to :user
  belongs_to :attachment_file
  has_many :todos, through: :todo_user_attachment_file
end