module "cluster" {
  source = "./modules/cluster"
  nom    = var.nom_cluster
}

module "argocd" {
  source        = "./modules/argocd"
  version_chart = var.version_argocd
  depends_on    = [module.cluster]
}

moved {
  from = kind_cluster.this
  to   = module.cluster.kind_cluster.this
}

moved {
  from = helm_release.argocd
  to   = module.argocd.helm_release.argocd
}
