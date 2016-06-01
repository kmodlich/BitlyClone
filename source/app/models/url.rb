class Url < ActiveRecord::Base

	before_save :shorten_url
	private
		def shorten_url
			seed = 56782
			self.key = XXhash.xxh32(long_url,seed).to_s(36) if attribute_present?("long_url")
		end
end
