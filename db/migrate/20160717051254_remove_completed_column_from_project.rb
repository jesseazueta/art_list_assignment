class RemoveCompletedColumnFromProject < ActiveRecord::Migration[5.0]
  def change
      remove_column :projects, :completed, :boolean, :default => false
  end
end
