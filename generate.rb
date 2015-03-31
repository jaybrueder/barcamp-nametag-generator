# encoding: UTF-8

require 'prawn'
require 'csv'
require './nametag_pdf'

# Load CSV file with attendees
attendees = []

CSV.foreach('attendees.csv', col_sep: ';', headers: true, header_converters: :symbol, converters: :all) do |row|
  attendees.push [row.fields[1], row.fields[2], row.fields[3], row.fields[4], row.fields[5]]
end

# Create PDF
pdf = NametagPdf.new(attendees)
pdf.render_file 'nametags.pdf'
