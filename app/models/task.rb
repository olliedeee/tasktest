class Task < ApplicationRecord
  
  belongs_to :goal
  
  def completed?
    !date_complete.blank?
  end
end
