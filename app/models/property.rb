class Property < ApplicationRecord
    has_many :railways, dependent: :destroy
    accepts_nested_attributes_for :railways, allow_destroy: true, reject_if: :all_blank

    validates :name, :rent, :adress, :age, :remarks, presence: true
end
