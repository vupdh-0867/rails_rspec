require "./entities/date_helper"

RSpec.describe "Date" do
  describe "#get_day_part" do
    context "with value from 1 to 12" do
      it "is morning" do
        date_helper = DateHelper.new
        expect(date_helper.get_day_part(1)).to eq "morning"
        expect(date_helper.get_day_part(12)).to eq "morning"
      end
    end

    context "with value from 13 to 17" do
      it "is afternoon" do
        date_helper = DateHelper.new
        expect(date_helper.get_day_part(13)).to eq "afternoon"
        expect(date_helper.get_day_part(17)).to eq "afternoon"
      end
    end

    context "with value from 18 to 24" do
      it "is evening" do
        date_helper = DateHelper.new
        expect(date_helper.get_day_part(18)).to eq "evening"
        expect(date_helper.get_day_part(24)).to eq "evening"
      end
    end
  end
end
