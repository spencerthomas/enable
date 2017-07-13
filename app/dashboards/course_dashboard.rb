require "administrate/base_dashboard"

class CourseDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    chapters: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    summary: Field::Text,
    description: Field::Text,
    summary_video: Field::String,
    thumbnail: Field::String,
    feature_image: Field::String,
    support_video: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :chapters,
    :id,
    :title,
    :summary,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :chapters,
    :id,
    :title,
    :summary,
    :description,
    :summary_video,
    :thumbnail,
    :feature_image,
    :support_video,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :chapters,
    :title,
    :summary,
    :description,
    :summary_video,
    :thumbnail,
    :feature_image,
    :support_video,
  ].freeze

  # Overwrite this method to customize how courses are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(course)
  #   "Course ##{course.id}"
  # end
end
