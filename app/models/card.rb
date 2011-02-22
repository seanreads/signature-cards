class Card < ActiveRecord::Base
   
   set_primary_key :uuid
   
   has_many :signatures
   validates_presence_of :heading, :passcode
   
     # AR callbacks
  def before_create 
  	require 'uuidtools'
    self.uuid = UUIDTools::UUID.random_create.to_s
  end
   
end
