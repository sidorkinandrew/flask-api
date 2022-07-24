### Deploy a stateful MySQL instance

- Create local persistent volumem, configmap and secrets

```bash
kubectl apply -f pv-mysql.yaml -f secrets-cms-db.yaml
```

- Deploy the instance

```bash
kubectl apply -f mysql-stateful.yaml
```


### Deploy the Flask App as a deployment

```bash
kubectl apply -f flask-deploy.yaml
```


### Deploy the Flask App via this really simple Helm chart with values.yaml

```bash
helm install flask-app flaskdeployment/ --namespace flask-app --values flaskdeployment/values.yaml
```