class Admin < ApplicationRecord
    validates :user_id, :uniqueness => { :scope => :form_id, :message => "User can only be in one role of the same form"}
    belongs_to :user
    belongs_to :form
end
