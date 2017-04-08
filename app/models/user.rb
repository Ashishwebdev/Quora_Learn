class User < ActiveRecord::Base
	attr_accessible :email, :username, :password, :password_confirmation, :new_password, :new_password_confirmation
    attr_accessor :password, :new_password
	before_save :encrypt_password
	
  
  #validations
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_confirmation_of :new_password, :if => Proc.new {|user| !user.new_password.nil? && !user.new_password.empty? }

  validates_presence_of :email, :on => :create

  validates_presence_of :username, :on => :create
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  has_many :user_questions, class_name: 'UserQuestion'
  has_many :questions, :through => :user_questions
  has_many :user_topics
  has_many :topics ,:through => :user_topics
  has_many :answers

  def initialize(attributes = {})
    super # must allow the active record to initialize!
    attributes.each do |name, value|
    	
      send("#{name}=", value)
    end
  end

  def update(attributes = {})
    super     # must allow the active record to initialize!
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def self.authenticate_by_email(email,password)
  	user = find_by_email(email)
  if user && user.password_hash == BCrypt::Engine.hash_secret(password,user.password_salt)
  	user
  else
  	nil
  	end
  end

  def self.authenticate_by_username(username,password)
  user = find_by_username(username)
  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
    user
  else
  	nil
  end
 end

 def encrypt_password
  if password.present?
    	self.password_salt = BCrypt::Engine.generate_salt
    	self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)	
  	end	
 end


end
