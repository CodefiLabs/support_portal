json.set! :data do
  json.array! @tickets do |ticket|
    json.partial! 'tickets/ticket', ticket: ticket
    json.url  "
              #{link_to 'Show', ticket }
              #{link_to 'Edit', edit_ticket_path(ticket)}
              #{link_to 'Destroy', ticket, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end