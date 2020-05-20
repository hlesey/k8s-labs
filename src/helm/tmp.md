

helm install my-wp bitnami/wordpress --set ingress=true
helm install my-wp bitnami/wordpress  --values \
  /repo/k8s-labs/src/helm/wordpress/values.yaml


1. Get the WordPress URL by running these commands:

  NOTE: It may take a few minutes for the LoadBalancer IP to be available.
        Watch the status with: 'kubectl get svc --namespace lab-helm -w my-wp-wordpress'

   export SERVICE_IP=$(kubectl get svc --namespace lab-helm my-wp-wordpress --template "{{ range (index .status.loadBalancer.ingress 0) }}{{.}}{{ end }}")
   echo "WordPress URL: http://$SERVICE_IP/"
   echo "WordPress Admin URL: http://$SERVICE_IP/admin"

2. Open a browser and access WordPress using the obtained URL.

3. Login with the following credentials below to see your blog:

  echo Username: user
  echo Password: $(kubectl get secret --namespace lab-helm my-wp-wordpress -o jsonpath="{.data.wordpress-password}" | base64 --decode)

  

