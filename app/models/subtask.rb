class Subtask < ActiveRecord::Base
  belongs_to :task
  belongs_to :subtaskeable, :polymorphic => true
end
