# opsworks_cookbooks
Learning AWS Ops Work

Below steps for running first recipe using AWS Ops Work:
1. Create a stack
2. Create a layer in the stack 
3. Register instance 
4. Once registration is done, we are now ready to create our first cookbook and running the recipes on registered instance.
5. Now, Goto -->AWS OpsWork -->Stack -->Layer -->recipes and add the Repository URL.
6. Once you added the repo, Now are ready to run command. Goto -->AWS OpsWork -->Stack -->Deployment and click on run command 
7. In run command window - give the value: "command - Execute recipes", "Recipes to excute - cookbook_name::recipe_name" and finally click on execute recipes.
8. You can check the status in next window.
