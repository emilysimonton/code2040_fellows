ActiveAdmin.register Fellow do
  scope :approval_queue
  index do 
    column :name
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

  permit_params :name, :id, :slug, :bio, :company_name, :company_logo, :title, :twitter_handle, :github_url, :linkdin_url, :profile_pic
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
