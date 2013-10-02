class Feedback

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :high, :middle, :low, :first, :second, :third, :very, :partly, :irrelevant, :good, :satisfactory, :poor, :body, :comment

  validates :high, :middle, :low, :first, :second, :third, :very, :partly, :irrelevant, :good, :satisfactory, :poor, :body, :comment, :presence => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end