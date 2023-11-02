require 'spec_helper'

describe Fiscal do

  it "returns current calendar year start date as fiscal year start, by default" do
    Date.fiscal.year.start.should eql(Date.today.beginning_of_year)
  end

  it "returns current calendar year end date as fiscal end start, by default" do
    Date.fiscal.year.end.should eql(Date.today.end_of_year)
  end

  it "returns '2013-04-01' as fiscal year start date of India for the date '2013-10-10'" do
    Date.fiscal(date: '2013-10-10', country: :in).year.start.should eql('2013-04-01'.to_date)
  end

  it "returns '2013-04-01' as fiscal year start date of India for the date '2014-01-10'" do
    Date.fiscal(date: '2014-01-10', country: :in).year.start.should eql('2013-04-01'.to_date)
  end

  it "returns '2013-04-06' as fiscal year start date of Great Britain for the date '2014-01-10'" do
    Date.fiscal(date: '2014-01-10', country: :gb).year.start.should eql('2013-04-06'.to_date)
  end

  it "returns '2013-04-06' as fiscal year start date of Great Britain for the date '2014-04-05'" do
    Date.fiscal(date: '2014-04-05', country: :gb).year.start.should eql('2013-04-06'.to_date)
  end

  it "returns '2014-04-05' as fiscal year end date of Great Britain for the date '2014-04-05'" do
    Date.fiscal(date: '2014-04-05', country: :gb).year.end.should eql('2014-04-05'.to_date)
  end

  it "returns '2014-10-01' as fiscal quarter start date of US for the date '2014-11-11'" do
    Date.fiscal(date: '2014-11-11', country: :us).quarter.start.should eql('2014-10-01'.to_date)
  end

  it "returns '2014-10-01' as first fiscal quarter start date of US for the date '2015-08-25'" do
    Date.fiscal(date: '2015-08-25', country: :us).quarter(1).start.should eql('2014-10-01'.to_date)
  end

  it "returns '2015-06-30' as first fiscal quarter end date of India for the date '2015-08-25'" do
    Date.fiscal(date: '2015-08-25', country: :in).quarter(1).end.should eql('2015-06-30'.to_date)
  end

  it "returns '2015-04-30' as first fiscal month end date of India for the date '2015-08-25'" do
    Date.fiscal(date: '2015-08-25', country: :in).month(1).end.should eql('2015-04-30'.to_date)
  end

  it "returns '2013-05-06' as second fiscal month start date of Great Britain for the date '2014-01-10'" do
    Date.fiscal(date: '2014-01-10', country: :gb).month(2).start.should eql('2013-05-06'.to_date)
  end

  it "returns current calendar year start date as fiscal year start, for today" do
    Date.today.fiscal.year.start.should eql(Date.today.beginning_of_year)
  end

  it "returns '2023-04-06' as fiscal year start date of Great Britain for the date '2023-04-06'" do
    Date.fiscal(date: '2023-04-06', country: :gb).year.start.should eql('2023-04-06'.to_date)
  end

  it "returns '2024-04-05' as fiscal year end date of Great Britain for the date '2023-04-06'" do
    Date.fiscal(date: '2023-04-06', country: :gb).year.end.should eql('2024-04-05'.to_date)
  end

end