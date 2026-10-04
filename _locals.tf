locals {
  argocd_project_config = {
    namespace  = kubernetes_namespace_v1.infra["argocd"].metadata[0].name
    helm_repo  = "${path.root}/../../charts"
    helm_chart = "raw-2.0.0"
    helm_source_repos = [
      "git@github.com:inl-io/argo-apps.git",
      "https://charts.inl.io/",
      "https://charts.inl.io/inl/",
    ]
    namespace_labels = {
      managed_by = "terraform"
    }
  }
}
