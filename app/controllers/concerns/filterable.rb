module Filterable
  extend ActiveSupport::Concern

  def filter!(resource)
    store_filters(resource)
    apply_filters(resource)
  end

  private

  def store_filters(resource)
    session["#{resource.to_s.underscore}_filters"] = {} unless session.key?("#{resource.to_s.underscore}_filters")

    session["#{resource.to_s.underscore}_filters"].merge!(filter_params_for(resource))
  end

  def filter_params_for(resource)
    params.permit(resource::FILTER_PARAMS)
  end

  def apply_filters(resource)
    resource.filter(session["#{resource.to_s.underscore}_filters"])
  end
end
