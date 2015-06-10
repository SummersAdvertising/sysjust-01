# -*- encoding : utf-8 -*-
TestDevise::Application.routes.draw do
  #resources :uploads

  resources :cross_reader, :only => :show

  mount RedactorRails::Engine => '/redactor_rails'

  mount Ckeditor::Engine => '/ckeditor'

  match "/purchasing" => "static_pages#purchasing"
  match "/purchasing_xqlite" => "static_pages#purchasing_xqlite"

  match "/download_contents" => "static_pages#download_contents"
  match "/download_contents/file_01" => "static_pages#file_01"
  match "/download_contents/file_02" => "static_pages#file_02"
  match "/download_contents/file_03" => "static_pages#file_03"
  match "/download_detection" => "static_pages#download_detection"
  match "/traits" => "static_pages#traits"
  match "/traits_of_xqlite" => "static_pages#traits_of_xqlite"
  match "/questions" => "static_pages#questions"
  match "/online_demonstrations" => "static_pages#online_demonstrations"
  match "/download_dms" => "static_pages#download_dms"
  match "/customize" => "static_pages#customize"
  match "/manual" => "static_pages#manual"

  match "/xqtrade" => "static_pages#xqtrade"
  match "/xqtrade_partner" => "static_pages#xqtrade_partner"
  match "/xqtrade_ca" => "static_pages#xqtrade_ca"
  match "/xqtrade_faq" => "static_pages#xqtrade_faq"
  match "/xqtrade_manual" => "static_pages#xqtrade_manual"
  match "/xqtrade_service" => "static_pages#xqtrade_service"


  match "/index" => "static_pages#index"
  match "/announcement" => "static_pages#announcement"


  match "page/:id" => "static_pages#show"

  resources :page
  resources :posts

  resources :writings do
  	member do
  		get "category"
  	end
  end

  devise_for :users, :path_prefix => 'admin', :controllers => {:registrations => 'registrations'}
  resources :users

  #resources :posts

  resources :news_updates, :only => [:index, :show]
  #resources :banners
  resources :experiences, :only => [:new, :create]
  resources :courses, :only => [:index] do
    resources :enrollments, :only => [:index, :new, :create]
  end
  resources :categories, :only => [:show] do
    resources :videos, :only => [:show, :download] do
      member do
        get 'download'
      end
    end
  end

  namespace :admin do
    resources :version_logs
    resources :news_updates
    resources :banners
    resources :experiences do
      collection do
        get 'remove'
      end
    end
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
    #resources :uploads
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
