require_relative "../import_recid_data"

namespace :import do
  desc "Import my recid data"
  # C make
  # Ruby rake
  # Invoke the :environment task before this recid_data task.
  # Make models, ... avilable to the ruby we'll write in this task.
  task recid_data: :environment do
    ImportRecid.import
  end
end
namespace :import do
  desc "Clear Datebase"
  task clear_states: :environment do
    State.delete_all
  end
end
