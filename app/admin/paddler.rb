ActiveAdmin.register Paddler do
  form do |f|
    f.inputs "Details" do
      f.input :first_name
      f.input :last_name
      f.input :gender
      f.input :weight
      f.input :side
      f.input :role
      f.input :team, :collection => Team.all.map{ |team| [team.name, team.id] }
    end
    f.actions
  end
end
