class Client < ActiveRecord::Base
  has_many :contacts
  has_many :tasks
  
  accepts_nested_attributes_for :contacts, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
