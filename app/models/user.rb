class User < ActiveRecord::Base
  
  #paperclip
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   validates :orgtype, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :positions, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :blogs, dependent: :destroy

  def student?
   		self.orgtype == 'Student'
	end

	def company?
		self.orgtype == 'Company'
	end

end
