class Project < ApplicationRecord
  validates :description, :client, presence: true
  validates :price_in_cents, numericality: {only_integer: true, greater_than: 0}
  validates :start_date, presence: true
  has_many :reviews

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    format("% .2f", price_in_dollars)
  end

  def date_start
    start_date.strftime("%m/%d/%y")
  end

  def date_end
    end_date.strftime("%m/%d/%y") unless end_date.nil?
  end


end
