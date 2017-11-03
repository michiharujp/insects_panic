class Insect < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true
  validates :picture, presence: true
  validate :picture_size
  mount_uploader :picture, PictureUploader

  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

end
