module Xrechnung
  class Period
    include MemberContainer

    # @!attribute start_date
    #   @return [Date]
    member :start_date, type: Date

    # @!attribute end_date
    #   @return [Date]
    member :end_date, type: Date

    # noinspection RubyResolve
    def to_xml(xml)
      xml.cac :InvoicePeriod do
        if start_date && end_date
          xml.cbc :StartDate, start_date
          xml.cbc :EndDate, end_date
        end
      end
    end
  end
end
