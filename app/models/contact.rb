class Contact < ActiveRecord::Base
  belongs_to :client
  has_many :tasks
end
