require 'swagger/swagger_object'

module Swagger
  module V2
    # Class representing a Swagger "Header Object".
    # @see https://github.com/swagger-api/swagger-spec/blob/master/versions/2.0.md#headerObject Header Object
    class Header < SwaggerObject
      # @!group Fixed Fields
      field :description, String
      field :required, Object # FIXME: Should be a boolean
      field :type, String
      field :format, String
      field :items, Hash # TODO: Items Object
      field :collectionFormat, String
      field :default, Object
      # @!endgroup

      # @!group Deterministic JSON Schema
      field :default, Object
      field :maximum, Numeric
      field :exclusiveMaximum, String # FIXME: boolean
      field :minimum, Numeric
      field :exclusiveMinimum,  String # FIXME: boolean
      field :maxLength, Integer
      field :minLength, Integer
      field :pattern, String
      field :maxItems,  Integer
      field :minItems,  Integer
      field :uniqueItems, String # FIXME: boolean
      field :enum,  Array[Object]
      field :multipleOf,  Numeric
      # @!endgroup
    end
  end
end