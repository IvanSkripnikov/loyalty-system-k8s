install-services:
	helm install shop-service shop-service\.
update-manifests:	
	kubectl apply -f authenticator\. && \
	kubectl apply -f notification-service\. && \
	kubectl apply -f billing-service\. && \
	kubectl apply -f delivery-service\. && \
	kubectl apply -f warehouse-service\. && \
	kubectl apply -f orders-service\. && \
	kubectl apply -f payment-service\. && \
    kubectl apply -f monitoring\. && \
	kubectl apply -f redis\. && \
	kubectl apply -f phpmyadmin\. && \
	cd monitoring && \
	kubectl apply -f prometheus\. && \
	kubectl apply -f alert-manager\. && \
	kubectl apply -f grafana\.
	
run: install-services update-manifests