class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :positions
  has_many :categories
  has_many :blogs, dependent: :destroy

    def student?
   		self.orgtype == 'Student'
	end

	def company?
		self.orgtype == 'Company'
	end

end
