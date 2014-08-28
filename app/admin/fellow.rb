ActiveAdmin.register Fellow do
  # menu :if => proc{ current_admin_user.super_duper }
  scope :approval_queue
  index do 
    column :name
    column :email
    column :year
    column :company_name
    column :title
    column "Approved", :display
    actions
  end


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  form do |f|
    f.inputs "Fellow Details" do
      f.input :name
      f.input :email
      f.input :bio
      f.input :company_name
      f.input :title
      f.input :company_logo, as: :file, input_html: { multiple: true}
      f.input :twitter_handle
      f.input :github_url
      f.input :profile_pic, as: :file, input_html: { multiple: true}
      if current_admin_user.super_duper
        f.input :display, :as => :check_boxes
        f.input :current_student, :as => :check_boxes
      end
    end
    f.actions
  end

  permit_params :name, :email, :id, :slug, :bio, :company_name, :company_logo, :title, :twitter_handle, :github_url, :linkdin_url, :profile_pic
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
