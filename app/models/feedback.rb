class Feedback

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :lecture, :relevance, :info_presented, :likelihood_change,
                :technical, :body, :comment
<<<<<<< HEAD

  validates :lecture, :relevance, :info_presented, :likelihood_change,
            :body, :technical, presence: true
=======
>>>>>>> b55e639e2a9e85541f1621448a7c092bdd616925

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end