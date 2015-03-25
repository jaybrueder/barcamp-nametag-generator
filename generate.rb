# encoding: UTF-8

require 'prawn'
require 'csv'
require './nametag_pdf'

# Load CSV file with attendees
attendees = []

CSV.foreach('attendees.csv', headers: true, header_converters: :symbol, converters: :all) do |row|
  attendees.push [row.fields[0], row.fields[1], row.fields[2], row.fields[3], row.fields[4]]
end

puts attendees

# Create PDF
pdf = NametagPdf.new(attendees)
pdf.render_file 'nametags.pdf'
