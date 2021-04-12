class PartOrder < ApplicationRecord
	has_many :part_items
	accepts_nested_attributes_for :part_items, reject_if: :all_blank, allow_destroy: true
end
