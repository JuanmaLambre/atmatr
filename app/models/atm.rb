class ATM < ApplicationRecord
  acts_as_mappable :default_units => :kms,
                   :lat_column_name => :lat,
                   :lng_column_name => :long

end
