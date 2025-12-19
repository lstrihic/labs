resource "page" "deploy_pod" {
  title = "Deploying a Pod"
  file  = "instructions/deploy_pod.md"

  activities = {
    deploy_task = resource.task.deploy_nginx_pod
  }
}