# frozen_string_literal: true

# rubocop:disable Metrics/ModuleLength
module KinopoiskUnofficialApiClient
  ENDPOINTS = {
    film: {
      path: "/films/{id}",
      path_params: %w[id],
      response_type: Types::Film,
      version: "v2.2"
    }.freeze,
    film_seasons: {
      path: "/films/{id}/seasons",
      path_params: %w[id],
      response_type: Types::SeasonResponse,
      version: "v2.2"
    }.freeze,
    film_facts: {
      path: "/films/{id}/facts",
      path_params: %w[id],
      response_type: Types::FactResponse,
      version: "v2.2"
    }.freeze,
    film_distributions: {
      path: "/films/{id}/distributions",
      path_params: %w[id],
      response_type: Types::DistributionResponse,
      version: "v2.2"
    }.freeze,
    film_box_office: {
      path: "/films/{id}/box_office",
      path_params: %w[id],
      response_type: Types::BoxOfficeResponse,
      version: "v2.2"
    }.freeze,
    film_awards: {
      path: "/films/{id}/awards",
      path_params: %w[id],
      response_type: Types::AwardResponse,
      version: "v2.2"
    }.freeze,
    film_videos: {
      path: "/films/{id}/videos",
      path_params: %w[id],
      response_type: Types::VideoResponse,
      version: "v2.2"
    }.freeze,
    film_similars: {
      path: "/films/{id}/similars",
      path_params: %w[id],
      response_type: Types::RelatedFilmResponse,
      version: "v2.2"
    }.freeze,
    film_images: {
      path: "/films/{id}/images",
      path_params: %w[id],
      response_type: Types::ImageResponse,
      version: "v2.2"
    }.freeze,
    film_reviews: {
      path: "/films/{id}/reviews",
      path_params: %w[id],
      response_type: Types::ReviewResponse,
      version: "v2.2"
    }.freeze,
    film_external_sources: {
      path: "/films/{id}/external_sources",
      path_params: %w[id],
      response_type: Types::ExternalSourceResponse,
      version: "v2.2"
    }.freeze,
    film_collections: {
      path: "/films/collections",
      response_type: Types::FilmCollectionResponse,
      version: "v2.2"
    }.freeze,
    film_premieres: {
      path: "/films/premieres",
      response_type: Types::PremiereResponse,
      version: "v2.2"
    }.freeze,
    film_filters: {
      path: "/films/filters",
      response_type: Types::FiltersResponse,
      no_params: true,
      version: "v2.2"
    }.freeze,
    films: {
      path: "/films",
      response_type: Types::FilmSearchByFiltersResponse,
      version: "v2.2"
    }.freeze,
    film_sequels_and_prequels: {
      path: "/films/{id}/sequels_and_prequels",
      path_params: %w[id],
      response_type: Types::Array.of(Types::FilmSequelsAndPrequelsResponse),
      version: "v2.1"
    }.freeze,
    search_film_by_keyword: {
      path: "/films/search-by-keyword",
      response_type: Types::FilmSearchResponse,
      version: "v2.1"
    }.freeze,
    film_staff: {
      path: "/staff",
      response_type: Types::Array.of(Types::StaffResponse),
      version: "v1"
    }.freeze,
    staff: {
      path: "/staff/{id}",
      path_params: %w[id],
      response_type: Types::PersonResponse,
      version: "v1"
    }.freeze,
    persons: {
      path: "/persons",
      response_type: Types::PersonByNameResponse,
      version: "v1"
    }.freeze,
    kp_user_votes: {
      path: "/kp_users/{id}/votes",
      path_params: %w[id],
      response_type: Types::KinopoiskUserVoteResponse,
      version: "v1"
    }.freeze,
    api_key: {
      path: "/api_keys/{apiKey}",
      path_params: %w[apiKey],
      response_type: Types::ApiKeyResponse,
      version: "v1"
    }.freeze,
    media_posts: {
      path: "/media_posts",
      response_type: Types::MediaPostsResponse,
      version: "v1"
    }.freeze
  }.freeze
end
# rubocop:enable Metrics/ModuleLength
