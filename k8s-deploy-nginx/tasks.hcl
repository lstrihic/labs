resource "task" "deploy_nginx_pod" {
  description = "Deploy an Nginx pod named 'nginx-pod'"

  config {
    target = resource.container.shell
  }

  condition "pod_running" {
    description = "Create a pod named 'nginx-pod' using the 'nginx' image"

    check {
      script          = "scripts/check_pod.sh"
      failure_message = "The pod 'nginx-pod' is not running or does not exist."
    }

    solve {
      script = "scripts/solve_pod.sh"
    }
  }
}