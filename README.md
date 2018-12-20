# welcome

A simple Python app (using Flask) to demo the power of [cloud native development](https://okteto.com).

*Prerequisites: you need to have a kubernetes cluster running and `kubectl` pointing to it.*

Clone this repo:

```console
git clone https://github.com/okteto/welcome
cd welcome
```

Deploy the welcome service by running the following command.
```console
$ kubectl create -f k8-specifications 
deployment.apps/welcome created
service/welcome created

$ kubectl get service welcome
NAME      TYPE           CLUSTER-IP     EXTERNAL-IP      PORT(S)        AGE
welcome   LoadBalancer   10.15.255.73   35.204.101.246   80:30879/TCP   20s
```
It might take a minute or two for the service to expose the external ip depending on your cluster.

*If you're using minikube, you'll need to either change the service to use a NodePort, or enable load balancers in your instance.*

Open your browser and hit the external-ip. You should see our welcome service, a place to vote on whether you prefer dogs or cats. Go ahead and place a few votes on your preferred species. 

Now that your service is running, it's time to do some **cloud native development**. Run the following command on your terminal

```console
$ cnd up
Activating your cloud native development environment...
Linking '/Users/ramiro/okteto/welcome' to ramiro/welcome...
Ready! Go to your local IDE and continue coding!
```

Open your favorite IDE, go to `app.py` and change the value of  `option_a` (line 7) from `Cats` to `Otters` and save the file. Go to the browser, reload the page, and check the label on the first button. Your changes were applied instantly and automatically!

Congratulations, you're now a **cloud native developer** 😎.
