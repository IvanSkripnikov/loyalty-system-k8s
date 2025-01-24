install-services:
	helm install loyalty-system loyalty-system\.
update-metrics:
	kubectl apply -f monitoring\. && \
	cd monitoring && \
	kubectl apply -f prometheus\. && \
	kubectl apply -f alert-manager\. && \
	kubectl apply -f grafana\.
	
run: install-services update-metrics