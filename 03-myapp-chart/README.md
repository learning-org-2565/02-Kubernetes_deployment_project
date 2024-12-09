helm install myapp ./myapp-chart
helm upgrade myapp ./myapp-chart
helm rollback myapp 1
helm package ./myapp-chart


## Summary
Without Helm:
You apply multiple YAML files directly with kubectl apply -f …. Changes require editing multiple files manually.

With Helm:
You have a single chart that bundles all related manifests into a reusable, parameterized package. You can easily:

Adjust settings in values.yaml without editing multiple manifest files.
Keep track of versions of your deployment.
Upgrade or rollback with simple commands.
Distribute your chart for consistent and repeatable deployments across different clusters and environments.
This makes your Kubernetes deployments more manageable, more maintainable, and less error-prone over time.


## Versioning and Packaging:

When you change something and want to release a new version of the chart, update version in Chart.yaml.
Package your chart:
bash
Copy code
helm package ./myapp-chart
This creates a myapp-1.0.1.tgz file (for example), which you can store in a Helm repository, share with others, and run helm install from that package at any time.
