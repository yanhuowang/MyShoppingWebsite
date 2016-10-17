class Item < ActiveRecord::Base
	belongs_to :cate

	has_attached_file :cover, 
	styles: { 
		original: "1024*1024>",
		cover: "300x300>", 
		item: "150x150#" 
	}, 
	default_url: "/images/:style/missing.png"
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end