# frozen_string_literal: true

class AddUuidToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :uuid, :string, null: false
    add_index :todos, :uuid, unique: true
  end
end
