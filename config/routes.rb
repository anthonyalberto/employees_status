EmployeesStatus::Application.routes.draw do
  devise_for :users
  get "status/index"
  get "status/update"
end
