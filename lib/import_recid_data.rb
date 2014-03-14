require 'csv'
require 'states'

class ImportRecid
  def self.import
    data = CSV.read("#{Rails.root}/data/ppus07st06.csv")
    data.each do |row|
      row.compact!
      state_name = row[0].strip if row[0].present?
      state_abbrev = STATES[state_name]
      if row[0].present? && STATE_NAMES.include?(state_name)
        State.create!(name: state_name, pop_at_risk: row[1].gsub!(',','').to_i, reincarcerated: row[2].gsub!(',','').to_i, percent: row[3].to_f, abbrev: state_abbrev)
      end
    end
  end
end
