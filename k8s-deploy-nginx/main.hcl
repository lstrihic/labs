resource "lab" "k8s_basics" {
  title       = "Kubernetes Pod Deployment"
  description = "Learn how to deploy your first pod in a Kubernetes cluster."
  layout      = resource.layout.two_column

  content {
    chapter "getting_started" {
      title = "Introduction to Pods"

      page "deploy_pod_page" {
        title     = "Deploying a Pod"
        reference = resource.page.deploy_pod
      }
    }
  }
}