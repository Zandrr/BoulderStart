class User < ActiveRecord::Base
  
  #paperclip
  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => ["application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # validates :password, presence: true
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

  def self.week_of_candidates
    User.where("created_at > ?", Date.today - 7.days).find_all_by_orgtype('candidate')
  end


  def password_required?
    if orgtype == "startup"
      !persisted? || !password.nil? || !password_confirmation.nil?
    else
      false
    end
  end
  
end
