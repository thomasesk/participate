ActiveAdmin.register Charity do
  permit_params :name, :category, :description, :photo
end

ActiveAdmin.register Charity do
  index do
    selectable_column
    column :id
    column :name
    column :category
    column :description
    column :photo
    actions
  end
end

ActiveAdmin.register Charity do
  form do |f|
    f.inputs "NGO details" do
      f.input :name
      f.input :category
      f.input :description
      f.input :photo
    end
    f.actions
  end

  permit_params :name, :category, :description, :photo
end
