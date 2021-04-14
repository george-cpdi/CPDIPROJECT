class WorkOrder < ApplicationRecord
	enum status: [:pending, :completed]
	scope :completed, -> { where(status: "completed") }
	scope :pending, -> { where(status: "pending") }
end
