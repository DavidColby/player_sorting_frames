module PlayersHelper
  def build_order_link(column:, label:)
    if session['player_filters'] && column == session['player_filters']['column']
      link_to(label, list_players_path(column: column, direction: next_direction))
    else
      link_to(label, list_players_path(column: column, direction: 'asc'))
    end
  end

  def next_direction
    session['player_filters']['direction'] == 'asc' ? 'desc' : 'asc'
  end

  def sort_indicator
    tag.span(class: "sort sort-#{session['player_filters']['direction']}")
  end
end
