class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	  include Bootsy::Container

	 is_impressionable
	 acts_as_votable
validate :bad_words,:bad_title

def bad_words
  profanity_filter = LanguageFilter::Filter.new matchlist: :profanity
  if profanity_filter.match? description then
    errors.add(:description, "The following language is inappropriate in a use: #{profanity_filter.matched(description).join(', ')}")
end
end

def bad_title
profanity_filter = LanguageFilter::Filter.new matchlist: :profanity
  if profanity_filter.match? title then
    errors.add(:title, "The following language is inappropriate in a use: #{profanity_filter.matched(description).join(', ')}")
end	
end

end

