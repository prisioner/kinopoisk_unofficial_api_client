# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::Client, :vcr do
  let(:api_key) { ENV.fetch("X_API_KEY") }
  let(:method_name) { :films }
  let(:client) { described_class.new(api_key) }

  describe "#call" do
    subject(:api_call) { client.call(method_name) }

    it "returns hash" do
      expect(api_call).to be_a(Hash)
    end

    context "when token is invalid" do
      let(:api_key) { "WRONG_API_KEY" }
      let(:error_message) do
        <<~ERROR_MESSAGE.chomp
          Kinopoisk Unofficial API has returned the error. (message: "You don't have permissions. See https://kinopoiskapiunofficial.tech")
        ERROR_MESSAGE
      end

      it "raises an error" do
        expect { api_call }.to raise_error(KinopoiskUnofficialApi::Exceptions::ResponseError, error_message)
      end
    end

    context "with low timeout" do
      before do
        KinopoiskUnofficialApi.configure { |config| config.connection_timeout = 0.001 }
      end

      after do
        KinopoiskUnofficialApi.configure { |config| config.connection_timeout = 30 }
      end

      it "raises an error" do
        expect { api_call }
          .to raise_error(Faraday::TimeoutError)
      end
    end

    context "with low open_timeout" do
      before do
        KinopoiskUnofficialApi.configure { |config| config.connection_open_timeout = 0.001 }
      end

      after do
        KinopoiskUnofficialApi.configure { |config| config.connection_open_timeout = 30 }
      end

      it "raises an error" do
        expect { api_call }
          .to raise_error(Faraday::ConnectionFailed)
      end
    end
  end

  describe "#method_missing" do
    subject { client }

    context "when method name is in snake case" do
      let(:endpoint) { :film_premieres }

      it "responds to snake-cased endpoints" do
        expect(client).to respond_to(endpoint)
      end
    end
  end

  describe "#film" do
    subject { client.film(id: 4_502_606) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::Film) }
  end

  describe "#film_seasons" do
    subject { client.film_seasons(film_id: 79_848) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::SeasonResponse) }
  end

  describe "#film_facts" do
    subject { client.film_facts(film_id: 79_848) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::FactResponse) }
  end

  describe "#film_distributions" do
    subject { client.film_distributions(film_id: 79_848) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::DistributionResponse) }
  end

  describe "#film_box_office" do
    subject { client.film_box_office(film_id: 79_848) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::BoxOfficeResponse) }
  end

  describe "#film_awards" do
    subject { client.film_awards(film_id: 4_502_606) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::AwardResponse) }
  end

  describe "#film_videos" do
    subject { client.film_videos(film_id: 4_502_606) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::VideoResponse) }
  end

  describe "#film_similars" do
    subject { client.film_similars(film_id: 4_502_606) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::RelatedFilmResponse) }
  end

  describe "#film_images" do
    subject { client.film_images(film_id: 4_502_606) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::ImageResponse) }
  end

  describe "#film_reviews" do
    subject { client.film_reviews(film_id: 4_502_606) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::ReviewResponse) }
  end

  describe "#film_external_sources" do
    subject { client.film_external_sources(film_id: 4_502_606) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::ExternalSourceResponse) }
  end

  describe "#film_collections" do
    subject { client.film_collections(type: :top_250_movies) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::FilmCollectionResponse) }
  end

  describe "#film_premieres" do
    subject { client.film_premieres(year: 2025, month: :august) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::PremiereResponse) }
  end

  describe "#film_filters" do
    subject { client.film_filters }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::FiltersResponse) }
  end

  describe "#films" do
    subject { client.films(from_year: 2020, to_year: 2022, countries: :usa, from_rating: 8.5, to_rating: 10) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::FilmSearchByFiltersResponse) }
  end

  describe "#film_sequels_and_prequels" do
    subject { client.film_sequels_and_prequels(film_id: 5502) }

    it { is_expected.to all be_an_instance_of(KinopoiskUnofficialApi::Types::FilmSequelsAndPrequelsResponse) }
  end

  describe "#search_film_by_keyword" do
    subject { client.search_film_by_keyword(keyword: ["путешествие во времени", "СССР"]) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::FilmSearchResponse) }
  end

  describe "#film_staff" do
    subject { client.film_staff(film_id: 5502) }

    it { is_expected.to all be_an_instance_of(KinopoiskUnofficialApi::Types::StaffResponse) }
  end

  describe "#staff" do
    subject { client.staff(person_id: 1514) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::PersonResponse) }
  end

  describe "#persons" do
    subject { client.persons(name: "Jim Carrey") }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::PersonByNameResponse) }
  end

  describe "#kp_user_votes" do
    subject { client.kp_user_votes(kp_user_id: 3) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::KinopoiskUserVoteResponse) }
  end

  describe "#api_key" do
    subject { client.api_key(api_key: client.secret_key) }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::ApiKeyResponse) }
  end

  describe "#media_posts" do
    subject { client.media_posts }

    it { is_expected.to be_an_instance_of(KinopoiskUnofficialApi::Types::MediaPostsResponse) }
  end
end
