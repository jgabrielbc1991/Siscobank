Rails.application.routes.draw do
  scope '/(:locale)', defaults: { locale: 'en' }, constraints: { locale: /en|es/ } do
    resources :users

    get '/', to: 'welcome#index'
  end
end