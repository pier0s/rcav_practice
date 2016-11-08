Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

get("/square/:num", { :controller => "calculations", :action => "square" })
get("/square_root/:num", { :controller => "calculations", :action => "square_root" })
get("/random/:min/:max", { :controller => "calculations", :action => "random_number" })

get("/payment/:interest/:years/:value", { :controller => "calculations", :action => "payment" })

end
