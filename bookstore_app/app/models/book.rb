# require 'elasticsearch/model'
class Book < ApplicationRecord

  # include Elasticsearch::Model
  #    include Elasticsearch::Model::Callbacks
  #
  #    settings index: { number_of_shards: 1 } do
  #       mappings dynamic: 'false' do
  #       indexes :title
  #      end
  #  end

end
#  # Delete the previous articles index in Elasticsearch
#  Book.__elasticsearch__.client.indices.delete index: Book.index_name rescue nil
#
#  # Create the new index with the new mapping
# Book.__elasticsearch__.client.indices.create  index: Book.index_name,  body: { settings: Book.settings.to_hash, mappings: Book.mappings.to_hash }
#
#  # Index all article records from the DB to Elasticsearch
# Book.import force: true

