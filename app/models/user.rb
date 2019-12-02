class User < ApplicationRecord
    belongs_to :home_addresses, :class_name => "Adress", :foreign_key => home_address_fk
    belongs_to :mail_addresses, :class_name => "Adress", :foreign_key => mail_address_fk

end
