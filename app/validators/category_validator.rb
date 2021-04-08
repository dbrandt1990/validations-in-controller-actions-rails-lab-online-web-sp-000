class CategoryValidator < ActiveModel::Validator
    def validate(record)
        if record.category != "Non-Fiction" || record.category != "Fiction"
          record.errors[:category] << "Your category must be Fiction or Non-Fiction"
        end
      end
end