class ProjectMembership < ActiveRecord::Base
  
  # relacionamentos
  belongs_to :user
  belongs_to :project
  
  # validacoes
  validates_associated :user
  validates_associated :project
  validates_presence_of :joined
  
end
