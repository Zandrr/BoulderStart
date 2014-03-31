class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :positions
  has_many :categories

    def student?
   		self.type == 'student'
	end

	def company?
		self.type == 'company'
	end

end
