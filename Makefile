install-services:
	helm install shop-service shop-service\. && \
	helm install orders-service orders-service\. && \
	helm install billing-service billing-service\. && \
	helm install notification-service notification-service\.
update-manifests:	
	kubectl apply -f authenticator\. && \
    kubectl apply -f monitoring\. && \
	kubectl apply -f redis\. && \
	cd monitoring && \
	kubectl apply -f prometheus\. && \
	kubectl apply -f alert-manager\. && \
	kubectl apply -f grafana\.
	
run: install-services update-manifests