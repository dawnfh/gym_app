class User < ActiveRecord::Base
    
    has_many :posts
    has_many :gymplaces
   
    
    has_secure_password
    
    validates_presence_of :password, :on => :create
  	validates_presence_of :email
  	validates_uniqueness_of :email
	
		has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end

