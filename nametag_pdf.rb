# encoding: UTF-8

class NametagPdf < Prawn::Document

    require "unicode_utils/upcase"

    def initialize(attendees)

      super(page_size: [1311, 945], background: 'template.png')

      @y_position = cursor

      font_families.update('Arial' => {
        :normal => './fonts/arial.ttf',
        :bold => './fonts/arialbd.ttf',
      })

      font 'Arial'
      fill_color '000000'

      # Add a page to the PDF for each attendee
      attendees.each do |attendee|
        firstname(attendee[0])
        lastname(attendee[1]) if attendee[1] != nil

        tag1(attendee[2])
        tag2(attendee[3])
        tag3(attendee[4])

        start_new_page()
      end

    end

    def firstname(firstname)
      formatted_text_box [{
        :text => UnicodeUtils.upcase(firstname),
        :size => 70,
        :styles => [:bold]
      }],
        :at => [80, 650],
        :width => 1000,
        :height => 100
    end

    def lastname(lastname)
      formatted_text_box [{
        :text => UnicodeUtils.upcase(lastname),
        :size => 70,
        :color => "FFFFFF",
        :styles => [:bold]
      }],
        :at => [80, 570],
        :width => 1000,
        :height => 100
    end

    def tag1(tag1)
      formatted_text_box [{
        :text => tag1,
        :size => 50,
      }],
        :at => [130, 357],
        :width => 1000,
        :height => 100
    end

    def tag2(tag2)
      formatted_text_box [{
        :text => tag2,
        :size => 50,
      }],
        :at => [130, 246],
        :width => 1000,
        :height => 100
    end

    def tag3(tag3)
      formatted_text_box [{
        :text => tag3,
        :size => 50,
      }],
        :at => [130, 137],
        :width => 1000,
        :height => 100
    end

end