class Task < ActiveRecord::Base
	belongs_to :project
	validates :title,
	 presence: {message: "入力しないとだめ"},
	 length: {minimum:2,message:"短すぎます"}
	 scope :unfinished, -> { where(done: false) }
end
