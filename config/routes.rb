Rails.application.routes.draw do

  get("/", {:controller => "pages", :action => "homepage"}) do
  end

  get("/square/new", {:controller => "pages", :action => "square_new"}) do
  end

  get("/square/result", {:controller => "pages", :action => "square_result"}) do
  end

  get("/square_root/new", {:controller => "pages", :action => "square_root_new"}) do
  end

  get("/square_root/result", {:controller => "pages", :action => "square_root_result"}) do
  end

  get("/random/new", {:controller => "pages", :action => "random_new"}) do
  end

  get("/random/result", {:controller => "pages", :action => "random_result"}) do
  end

  get("/payment/new", {:controller => "pages", :action => "payment_new"}) do
  end

  get("/payment/result", {:controller => "pages", :action => "payment_result"}) do
  end

end
