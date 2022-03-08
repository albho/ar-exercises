class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :carries_mens_or_womens_apparel

  def carries_mens_or_womens_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel, "or womens apparel must be sold")
      errors.add(:womens_apparel, "or mens apparel must be sold")
    end
  end
end
