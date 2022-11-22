class Day < ActiveRecord::Base
    has_many :foods, dependent: :destroy
end