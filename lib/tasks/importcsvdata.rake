require 'csv'

# desc "Import CSV Data."
task :import_csv_data => :environment do

  csv_file_path = File.read("#{Rails.root}/db/3dmap.csv")
  csv = CSV.parse(csv_file_path, :headers => true)
  csv.each do |row|
    Restaurant.create!(
        :name => row[0].try(:encode, "utf-8"),
        :address => row[1].try(:encode, "utf-8"),
        :city => row[2].try(:encode, "utf-8"),
        :state => row[3].try(:encode, "utf-8"),
        :zip => row[4].try(:encode, "utf-8"),
        :phone => row[5].try(:encode, "utf-8"),
        :website => row[6].try(:encode, "utf-8"),
        :latitude => row[7].try(:encode, "utf-8"),
        :longitude => row[8].try(:encode, "utf-8")
    )
  end

end  

# task create_restaurants: :environment do

#   require 'csv'    

#   csv_text = File.read('/app/3dmap_csv.csv')
#   csv = CSV.parse(csv_text, :headers => true)
#   csv.each do |row|
#     Restaurant.create!(row.to_hash)
#   end

# end