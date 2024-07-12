# frozen_string_literal: true

class Todo < ApplicationRecord
  validates :content, presence: true
  validates :uuid, presence: true, uniqueness: true

  before_validation :set_uuid

  private

  def set_uuid
    self.uuid ||= loop do
      random_uuid = SecureRandom.uuid
      break random_uuid unless self.class.exists?(uuid: random_uuid)
    end
  end
end
