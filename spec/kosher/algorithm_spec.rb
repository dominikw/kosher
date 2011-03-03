require "spec_helper"

module Kosher
  describe Algorithm do
    use_vcr_cassette 'batch-request'

    let(:asins) do

      # The last ASIN does not exist.
      %w{
        0816614024 0143105825 0485113600 0816616779 0942299078
        0816614008 144006654X 0486400360 0486417670 087220474X
        0486454398 0268018359 1604246014 184467598X 0312427182
        1844674282 0745640974 0745646441 0826489540 2081232191 }
    end

    let(:algorithm) do
      request = Request.new(credentials)
      request.locale = :us
      request.batchify(asins)
      request.get
    end

    describe "#items" do
      it "should return found items" do
        algorithm.items.count.should eql 19
        algorithm.items.first.should be_a Item
      end
    end

    describe "#errors" do
      it "should return ASINs that are not found" do
        algorithm.errors.count.should eql 1
        algorithm.errors.first.should eql '2081232191'
      end
    end
  end
end
