class Project < ActiveRecord::Base
  
  # relacionamentos
  has_many :task_types
  has_many :project_memberships, :conditions => "leaved is null"
  has_many :users, :through => :project_memberships
  has_many :time_logs, :through => :task_types
  
  # validacoes
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, :within => 5..50
  
end
