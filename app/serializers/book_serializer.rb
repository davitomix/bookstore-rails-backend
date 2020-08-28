class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :category, :pages, :progress
end
