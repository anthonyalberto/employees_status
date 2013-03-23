module ApplicationHelper

  def select_tag_for_statuses(statuses, current_status)
    select_tag "status", options_from_collection_for_select(statuses, "id", "name", current_status.id), data: {remote: true, url: status_update_path, loader: ".loader"}
  end

end
