# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::Exceptions::ResponseError, :vcr do
  subject(:error) do
    described_class.new(response)
  rescue StandardError => e
    e
  end

  let(:method_name) { :films }
  let(:response) { KinopoiskUnofficialApi::Client.new("WRONG-API-KEY").call(method_name) }

  describe "#error_code" do
    subject { super().error_code }

    it { is_expected.to eq 401 }
  end

  describe "#to_s" do
    subject { super().to_s }

    let(:expected_result) do
      <<~STRING.chomp
        Kinopoisk Unofficial API has returned the error. (message: "You don't have permissions. See https://kinopoiskapiunofficial.tech")
      STRING
    end

    it { is_expected.to eq expected_result }
  end

  describe "#data" do
    subject { super().data }

    let(:expected_result) do
      {
        message: "You don't have permissions. See https://kinopoiskapiunofficial.tech"
      }.transform_keys(&:to_s)
    end

    it { is_expected.to eq(expected_result) }
  end
end
