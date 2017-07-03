class Apply < ApplicationRecord
    validates :free_time, :skills, presence: true

    belongs_to :project
    belongs_to :interested, class_name: "User"
    belongs_to :employer, class_name: "User"
end
