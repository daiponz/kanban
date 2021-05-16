class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
        t.string      :title, null: false, limit: 255
        t.text        :memo, limit: 1000
        t.references  :list, null: false, foreign_key: true
        # ==========ここまで編集する==========
      t.timestamps
    end
  end
end
