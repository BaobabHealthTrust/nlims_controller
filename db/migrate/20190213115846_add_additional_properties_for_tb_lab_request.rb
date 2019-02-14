class AddAdditionalPropertiesForTbLabRequest < ActiveRecord::Migration[5.1]
  def up
    execute "ALTER TABLE specimen ADD recommended_examination VARCHAR(255);";
    execute "ALTER TABLE specimen ADD treatment_history VARCHAR(255);";
    execute "ALTER TABLE specimen ADD sample_date datetime;";
    execute "ALTER TABLE specimen ADD sample_source VARCHAR(255);";
  end
    
  def down
    execute "ALTER TABLE specimen DROP recommended_examination;";
    execute "ALTER TABLE specimen DROP treatment_history;";
    execute "ALTER TABLE specimen DROP sample_date;";
    execute "ALTER TABLE specimen DROP sample_source;";
  end
end
