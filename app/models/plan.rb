class Plan < ApplicationRecord
  validates :longitude,
            :latitude,
            :arrival_date,
            :departure_date, presence: true

  belongs_to :user
  has_many :saved_events, dependent: :destroy
  has_many :saved_eats, dependent: :destroy

  attr_reader :address

  after_initialize do
    @address = get_address(latitude, longitude)
  end

  def as_json(options = nil)
    super({ include: { saved_eats: {
                         include: :eat,
                         only: [] },
                       saved_events: {
                         include: :event,
                         only: [] } },
            methods: :address }.merge(options || {}))
  end
end
