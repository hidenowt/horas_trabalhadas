class TimeLog < ActiveRecord::Base
  
  # relacionamentos
  belongs_to :user
  belongs_to :taks_type
  
  # validacoes
  validates_presence_of :task_date
  validates_presence_of :worked_hours
  
end
