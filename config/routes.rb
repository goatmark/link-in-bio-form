Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", {:controller => "items", :action => "backdoor"})

  post("/add_link", {:controller=> "items", :action => "add_link"})
end
