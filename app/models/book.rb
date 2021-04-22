class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }
  # before_action :ensure_user, only: [:edit, :update, :destroy]

end
