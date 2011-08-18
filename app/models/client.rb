class Client < ActiveRecord::Base
  has_many :contacts
  accepts_nested_attributes_for :contacts, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
