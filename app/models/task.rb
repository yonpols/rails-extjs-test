class Task < ActiveRecord::Base
  belongs_to :client
  belongs_to :contact
  belongs_to :creator, :class_name => 'User'
  belongs_to :asigned, :class_name => 'User'
end
