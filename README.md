# Metrics of Sustainable Bonds

Intro from Patrick

go to [walkthrough](./Data/green_metrics_sustainable_bonds.ipynb) for results.

![crypto carry performance](output/figures/carry-pnl.png "crypto carry performance")

## requirements

We are running everything in a Docker container. Everything is handled in the docker-compose file. 
IMPORTANT: change the Volumes path in the docker-compose to point to your file location, so all changes you do in the jupyter notebook are directly saved. Otherwise you have to upload the files and changes are not saved.

then you can simply start the container with:
```bash
docker-compose up --build
```
It will start an instance of postgres, jupyter and adminer to see the postgres tables.

Now you can head to the jupyter notebook using the link including the token:

![jupyter link](README_images/jupyter_link.PNG "jupyter link")

In the jupyter notebook you can open `work` and the file `excel2sql.ipynb`. stepping through it will transfer your data into a SQL-Table. 

You can then see your data table in the adminer. To do so, you have to got o the port 8080 in your browser: `http://localhost:8080`. You will then see a login window, where you have to input the following parameters:

![jupyter link](README_images/jupyter_link.PNG "jupyter link")
