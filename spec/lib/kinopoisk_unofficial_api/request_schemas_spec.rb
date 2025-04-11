# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas do
  KinopoiskUnofficialApi::ENDPOINTS.each do |method_name, endpoint_params|
    schema_file_short_path = "lib/kinopoisk_unofficial_api/request_schemas/#{method_name}.rb"
    schema_file_full_path = "#{__dir__}/../../../#{schema_file_short_path}"

    describe "#{method_name} endpoint" do
      if endpoint_params[:no_params]
        it "have no params and there is no #{schema_file_short_path} file" do
          expect(File.exist?(schema_file_full_path)).to be false
        end
      else
        it "have params and #{schema_file_short_path} file exists" do
          expect(File.exist?(schema_file_full_path)).to be true
        end
      end
    end
  end
end
