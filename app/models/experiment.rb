class Experiment < ApplicationRecord
  has_many :scientist_experiments
  has_many :scientists, through: :scientist_experiments

  def self.long_experiments
    self
      .where("num_months > 6")
      .order("num_months DESC")
  end
end