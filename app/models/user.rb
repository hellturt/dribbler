class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
			:recoverable, :rememberable, :trackable, :validatable

	has_attached_file :avatar, styles: { medium: "500x500#", thumb: "50x50>" }
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	validates :email, uniqueness: true
	validates :name, uniqueness: true

	has_many :posts
	has_many :comments


	acts_as_follower
  	acts_as_followable
end
