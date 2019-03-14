ActiveAdmin.register User do
  permit_params :email, :password, :photo, :admin
end

ActiveAdmin.register User do
  index do
    selectable_column
    column :id
    column :email
    column :photo
    column :admin
    actions
  end
end

ActiveAdmin.register User do
  form do |f|
    f.inputs "Account" do
      f.input :email
      f.input :password
      f.input :photo
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :email, :password, :photo, :admin
end
