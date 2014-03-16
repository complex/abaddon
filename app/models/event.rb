class Event < ActiveRecord::Base

  has_many :occurrences, dependent: :destroy

  validates :title, presence: true

  before_create :generate_token

  default_scope { order 'occurrences_count DESC, title ASC' }

  def to_param
    [ self.id, self.slug ].join '='
  end

  def slug
    self.title.parameterize
  end

  def score
    # this should be based on number and recency of occurrences
  end

  def title_with_count
    "#{ self.title } (#{ self.occurrences_count })"
  end

  def last_occurrence_at
    self.occurrences.first.try :created_at
  end

  def generate_token
    self.token = loop do
      token = SecureRandom.hex 6
      break token unless Event.exists?(token: token)
    end
  end

  def generate_token!
    self.generate_token
    self.save
  end

end
