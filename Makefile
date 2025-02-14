install-services:
	helm install loyalty-system loyalty-system\.
update-manifests:	
	kubectl apply -f authenticator\. && \
    kubectl apply -f monitoring\. && \
	cd monitoring && \
	kubectl apply -f prometheus\. && \
	kubectl apply -f alert-manager\. && \
	kubectl apply -f grafana\.
	
run: install-services update-manifests