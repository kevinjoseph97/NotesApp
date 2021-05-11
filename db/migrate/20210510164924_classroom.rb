class Classroom < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms do |t|
      t.string :subject_name
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :note, foreign_key: true
    end

  end
end
