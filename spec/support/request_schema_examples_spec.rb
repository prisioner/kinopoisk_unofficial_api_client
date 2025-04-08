# frozen_string_literal: true

RSpec.shared_examples "request schema" do |test_cases|
  subject { described_class.call(params).to_h }

  described_class.schema.keys.map(&:name).each do |schema_key|
    describe "##{schema_key}" do
      cases = test_cases.delete(schema_key)

      it "has test cases" do
        expect(cases).not_to be_empty
      end

      next unless cases

      required_params = cases[:required_params] || {}

      cases[:key_transformations]&.each do |variants, test_value|
        variants.each do |key|
          context "when #{key.inspect} key is passed to schema" do
            let(:params) { required_params.merge(key => test_value) }

            it "transforms to #{schema_key.inspect} with correct value" do
              expect(subject).to include(schema_key => test_value)
            end
          end
        end
      end

      cases[:value_transformations]&.each do |passed_value, expected_value|
        context "when #{passed_value.inspect} is passed to #{schema_key.inspect}" do
          let(:params) { required_params.merge(schema_key => passed_value) }

          it "transforms value to #{expected_value.inspect}" do
            expect(subject).to include(schema_key => expected_value)
          end
        end
      end

      context "when no value passed to #{schema_key.inspect}" do
        let(:params) { required_params }

        if cases[:required]
          it "raises an exception" do
            expect { subject }.to raise_exception(Dry::Struct::Error)
          end
        elsif cases.key?(:default)
          it "sets default value to #{cases[:default].inspect}" do
            expect(subject).to include(schema_key => cases[:default])
          end
        else
          it "allows attribute to absent" do
            expect(subject).not_to include(schema_key)
          end
        end
      end
    end
  end

  it "has no redundant test cases" do
    expect(test_cases).to be_empty
  end
end
