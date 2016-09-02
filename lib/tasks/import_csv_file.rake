require 'csv'

namespace :import_csv_file do
	desc "import csv file to rails application' DB"
	task :import => :environment do
	  CSV.foreach('sample_csv_data.csv', :headers => true) do |row|
      Product.create(row.to_hash)  # This table I have created to check how to use rake task.
    end
	end
end
