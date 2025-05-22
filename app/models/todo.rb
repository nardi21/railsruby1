class Todo < ApplicationRecord
    validates :title, :description, :status, presence: true

end
