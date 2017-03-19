class Url < ApplicationRecord
  validates :long_url, :presence =>true
  before_create :shorten, :set

  def shorten
    self.short_url = SecureRandom.base64(5)
  end

end
