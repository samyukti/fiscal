# frozen_string_literal: true

module Fiscal
  class Fiscal
    def initialize(options = {})
      @date    = options[:date]
      @country = options[:country]
    end

    def year(index = nil)
      FiscalPeriod.new(date: @date, country: @country, type: :year, index: index)
    end

    def half_year(index = nil)
      FiscalPeriod.new(date: @date, country: @country, type: :half_year, index: index)
    end

    def quarter(index = nil)
      FiscalPeriod.new(date: @date, country: @country, type: :quarter, index: index)
    end

    def month(index = nil)
      FiscalPeriod.new(date: @date, country: @country, type: :month, index: index)
    end
  end
end
