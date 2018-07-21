class Budget
  class Investment
    class Milestone < ActiveRecord::Base
      include Imageable
      include Documentable
      documentable max_documents_allowed: 3,
                   max_file_size: 3.megabytes,
                   accepted_content_types: [ "application/pdf" ]

      translates :title, :description, touch: true
      globalize_accessors locales: [:en, :es, :fr, :nl, :val, :pt_br]

      belongs_to :investment
<<<<<<< HEAD

      validates :title, presence: true
      validates :description, presence: true
      validates :investment, presence: true
      validates :publication_date, presence: true
=======
      belongs_to :status, class_name: 'Budget::Investment::Status'

      validates :title, presence: true
      validates :investment, presence: true
      validates :publication_date, presence: true
      validate :description_or_status_present?
>>>>>>> v0.16

      scope :order_by_publication_date, -> { order(publication_date: :asc) }

      def self.title_max_length
        80
      end

<<<<<<< HEAD
=======
      def description_or_status_present?
        unless description.present? || status_id.present?
          errors.add(:description)
        end
      end
>>>>>>> v0.16
    end
  end
end
