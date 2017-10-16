class Recipez < ApplicationRecord
    def self.search(title, region)
        if (title.present? && region.present?)
            where(['lower(title) like ? and lower(region) like ?', "%#{title.downcase}%", "%#{region.downcase}%#"])
        elsif (title.present?)
            where(['lower(title) like ?', "%#{title.downcase}%"])
        elsif (region.present?)
            where(['lower(region) like ?', "%#{region.downcase}%"])
        else
            all
        end
    end
end
