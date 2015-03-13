# require 'csv'

# desc "Import CSV Data."
# task :import_csv_data => :environment do

#   csv_file_path = "#{Rails.root}/lib/3dmap_csv.csv"

#   CSV.foreach(file, :headers => true) do |row|
#     Restaurant.create {
#         :name => row[0],
#         :address => row[1],
#         :city => row[2],
#         :state => row [3],
#         :zip => row [4],
#         :phone => row [5],
#         :website => row [6]
#     }
#   end

# end  

task create_restaurants: :environment do

  require 'csv'    

  csv_text = File.read('/app/3dmap_csv.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Restaurant.create!(row.to_hash)
  end

end