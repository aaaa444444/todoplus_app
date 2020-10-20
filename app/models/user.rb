class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :goals
  has_many :tags
  has_many :user_attachment_files, dependent: :destroy
  has_many :attachment_files, through: :user_attachment_files, dependent: :destroy
  
  def available_tags
  self.tags.select(&:persisted?)
  end
end
