class AddAttachmentOsifeOscdfOsgToFiados < ActiveRecord::Migration
  def self.up
    change_table :fiados do |t|
      t.attachment :osife
      t.attachment :oscdf
      t.attachment :osg
    end
  end

  def self.down
    remove_attachment :fiados, :osife
    remove_attachment :fiados, :oscdf
    remove_attachment :fiados, :osg
  end
end
