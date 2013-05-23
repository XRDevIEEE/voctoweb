ActiveAdmin.register ApiKey do

  index do
    column :key
    column :description
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs "API Key Details" do
      f.input :description
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit api_key: [:description]
    end
  end
end
