# frozen_string_literal: true

module Types
  class RemoteCacheStorageType < Types::BaseUnion
    possible_types S3BucketType

    class << self
      def resolve_type(object, context)
        if object.is_a?(S3Bucket)
          Types::S3BucketType
        end
      end
    end
  end
end
