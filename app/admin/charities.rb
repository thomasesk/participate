ActiveAdmin.register Charity do
  permit_params :name, :category, :description, :photo
end
