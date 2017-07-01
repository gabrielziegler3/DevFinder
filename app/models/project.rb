class Project < ApplicationRecord
    has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "no-image-found.jpg"
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    validates :name, :skill, presence: true


    belongs_to :user
end
