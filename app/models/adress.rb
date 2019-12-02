class Adress < ApplicationRecord
    has_many :home_residents, :class_name => 'User', :foreign_key => 'home_address_fk'
    has_many :mail_residents, :class_name => 'User', :foreign_key => 'mail_address_fk'
end
