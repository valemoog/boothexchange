Rails.application.routes.draw do
  devise_for :users
  # Routes for the Conversation resource:

  root 'events#index'

  # CREATE


  get "/conversations/new", :controller => "conversations", :action => "new"
  post "/create_conversation", :controller => "conversations", :action => "create"

  # READ
  get "/conversations", :controller => "conversations", :action => "index"
  get "/conversations/:id", :controller => "conversations", :action => "show"

  # UPDATE
  get "/conversations/:id/edit", :controller => "conversations", :action => "edit"
  post "/update_conversation/:id", :controller => "conversations", :action => "update"

  # DELETE
  get "/delete_conversation/:id", :controller => "conversations", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE


  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # Routes for the Posting resource:
  # CREATE
  get "/postings/new", :controller => "postings", :action => "new"
  post "/create_posting", :controller => "postings", :action => "create"

  # READ
  get "/postings", :controller => "postings", :action => "index"
  get "/postings/:id", :controller => "postings", :action => "show"

  # UPDATE
  get "/postings/:id/edit", :controller => "postings", :action => "edit"
  post "/update_posting/:id", :controller => "postings", :action => "update"

  # DELETE
  get "/delete_posting/:id", :controller => "postings", :action => "destroy"
  #------------------------------


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
