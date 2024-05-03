Repo to create a basic, unconfigured EKS cluster for reproducing/troubleshooting issues.

Based on copyleft (MPL 2.0) code from a tutorial in the [Hashicorp docs](https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks)

Tested with OpenTofu. Provider address `opentofu/aws` is an alias for `hashicorp/aws`, but per OpenTofu maintainers it shouldn't be used.

After resources are provisioned, run `aws eks update-kubeconfig --region $REGION --name $CLUSTERNAME`

Then, run `kubectl get svc` to verify permissions propagated properly.