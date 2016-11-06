class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_tagger

  devise :database_authenticatable, :recoverable,
          :rememberable, :trackable, :validatable
end
