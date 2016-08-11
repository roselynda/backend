class ContributorSerializer < ActiveModel::Serializer
  attributes :user_id, :is_owner
end
