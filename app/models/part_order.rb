class PartOrder < ApplicationRecord
	has_many :parts
	accepts_nested_attributes_for :parts, reject_if: :all_blank, allow_destroy: true
end
