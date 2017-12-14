require "administrate/base_dashboard"

class PathDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    courses: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    cover_image: Field::String,
    length: Field::String,
    course_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    long_description: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :courses,
    :id,
    :title,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :courses,
    :id,
    :title,
    :description,
    :cover_image,
    :length,
    :course_id,
    :created_at,
    :updated_at,
    :long_description,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :courses,
    :title,
    :description,
    :cover_image,
    :length,
    :course_id,
    :long_description,
  ].freeze

  # Overwrite this method to customize how paths are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(path)
  #   "Path ##{path.id}"
  # end
end
