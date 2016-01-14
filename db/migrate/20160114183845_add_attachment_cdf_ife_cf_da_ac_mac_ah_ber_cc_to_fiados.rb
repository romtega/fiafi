class AddAttachmentCdfIfeCfDaAcMacAhBerCcToFiados < ActiveRecord::Migration
  def self.up
    change_table :fiados do |t|
      t.attachment :cdf
      t.attachment :ife
      t.attachment :cf
      t.attachment :da
      t.attachment :ac
      t.attachment :mac
      t.attachment :ah
      t.attachment :ber
      t.attachment :cc
    end
  end

  def self.down
    remove_attachment :fiados, :cdf
    remove_attachment :fiados, :ife
    remove_attachment :fiados, :cf
    remove_attachment :fiados, :da
    remove_attachment :fiados, :ac
    remove_attachment :fiados, :mac
    remove_attachment :fiados, :ah
    remove_attachment :fiados, :ber
    remove_attachment :fiados, :cc
  end
end
