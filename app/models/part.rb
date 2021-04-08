class Part < ApplicationRecord
	  has_and_belongs_to_many :vendors
	  has_one_attached :main_image
	  belongs_to :part_order
end
