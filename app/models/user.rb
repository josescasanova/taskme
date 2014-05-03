class User < ActiveRecord::Base
  validates_presence_of :name

  has_many :tasks
  has_many :reviews
  has_many :proposals

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.image = auth['info']['image'] || ""
      end
    end
  end

end
