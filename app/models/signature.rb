class Signature < ActiveRecord::Base

	set_primary_key :uuid

  has_one :card
  validates_presence_of :name
   
  # AR callbacks
  def before_create 
  	require 'uuidtools'
    self.uuid = UUIDTools::UUID.random_create.to_s
  end   
   
end
