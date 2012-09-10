# -*- encoding : utf-8 -*-
TestDevise::Application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'

  mount Ckeditor::Engine => '/ckeditor'

  match "/purchasing" => "static_pages#purchasing"
  match "/download_contents" => "static_pages#download_contents"
  match "/download_contents/file_01" => "static_pages#file_01"
  match "/download_contents/file_02" => "static_pages#file_02"
  match "/download_contents/file_03" => "static_pages#file_03"
  match "/traits" => "static_pages#traits"
  match "/questions" => "static_pages#questions"
  match "/online_demonstrations" => "static_pages#online_demonstrations"
  match "/download_dms" => "static_pages#download_dms"
  match "/index" => "static_pages#index"
  match "/announcement" => "static_pages#announcement"

  devise_for :users, :path_prefix => 'admin', :controllers => { :registrations => 'registrations'}  
  resources :users    

  #resources :posts

  resources :news_updates
  resources :banners
  resources :experiences
  resources :courses do
    resources :enrollments
  end
  resources :categories do
    resources :videos do
      member do
        get 'download'
      end
    end
  end

  namespace :admin do
    resources :news_updates
    resources :banners
    resources :experiences
    resources :service_emails
    resources :categories do
      resources :videos
    end  
    resources :courses do
      collection do
        get 'online'
        get 'offline'
      end
      resources :enrollments
    end  
  end  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'static_pages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
