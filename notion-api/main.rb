require_relative "config"

client = Notion::Client.new

database = client.database(database_id: Config::DATABASE_ID)

properties = {
  title: [
    {
      "type": "text",
      "text": {
        "content": "Empty!",
      }
    }
  ],
}

children = [

]

client.create_page(
   parent: { database_id: database.id },
   properties: properties,
   children: children
)
