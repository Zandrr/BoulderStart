class User < ActiveRecord::Base
  
  #paperclip
  has_attached_file :avatar, styles: {thumbnail: "60x60#"}
  validates_attachment_content_type :avatar, :content_type => ["application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #validates :orgtype, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :positions, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :blogs, dependent: :destroy

  def candidate?
   		self.orgtype == 'candidate'
	end

	def startup?
		self.orgtype == 'startup'
	end

  def password_required?
    false
  end
  
end
