install-services:
	helm install shop-service shop-service\.
update-manifests:	
	kubectl apply -f authenticator\. && \
    kubectl apply -f monitoring\. && \
	cd monitoring && \
	kubectl apply -f prometheus\. && \
	kubectl apply -f alert-manager\. && \
	kubectl apply -f grafana\.
	
run: install-services update-manifests