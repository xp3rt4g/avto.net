class User < ApplicationRecord
    belongs_to :account_type
    belongs_to :town
end
