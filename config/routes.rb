EventBuzz::Application.routes.draw do
  root :to => 'main#index'
  
  match "/map" => "main#map"
  match "/find" => "main#find"
end
