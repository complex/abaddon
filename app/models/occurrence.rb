class Occurrence < ActiveRecord::Base

  belongs_to :event, counter_cache: true

  validates :event, presence: true

  before_create :generate_token

  default_scope { order 'created_at DESC' }

  def to_param
    [ self.id, self.created_at.strftime('%Y-%m-%d-%H-%M-%S') ].join '='
  end

  def location?
    self.latitude? and self.longitude?
  end

  def title
    self.created_at.strftime '%Y/%m/%d %H:%M:%S'
  end

  def generate_token
    self.token = loop do
      token = SecureRandom.hex 6
      break token unless Occurrence.exists?(token: token)
    end
  end

  def generate_token!
    self.generate_token
    self.save
  end

end
