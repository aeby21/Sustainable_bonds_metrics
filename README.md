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

**second**, the necessary virtual environment can be created from `requirements.txt`: 
```bash
python3 -m venv .venv; source .venv/bin/activate; pip install -r requirements.txt
```
to create a virtual environment in `$PROJECT_ROOT/.venv` and install all packages;
please don't forget to activate it every time!

**third**, package [foolbox](https://github.com/ipozdeev/foolbox) must be downloaded to where 
python can find it.

**fourth**, a certain data folder layout must be adhered to; you can create it with
```bash
make data_dir_layout
```

**fifth**, you have to download
spot and perpetual futures prices from Kraken: 
- download the five [.zip archives](https://support.kraken.com/hc/en-us/articles/360047124832-Downloadable-historical-OHLCVT-Open-High-Low-Close-Volume-Trades-data) 
of spot prices from 'Separate ZIP files' &ndash; one for each cryptocurrency &ndash; and place them in `data/raw/spot/kraken/`;
- download all .csv.zip archives following the link [here](https://support.kraken.com/hc/en-us/articles/360022835871-Historical-Data)
and place them in`data/raw/perpetual/kraken/`;

```bash
$ ls data/raw/spot/kraken
BCH_OHLCT.zip
ETH_OHLCT.zip
LTC_OHLCT.zip
XBT_OHLCT.zip
XRP_OHLCT.zip
```

```bash
$ ls data/raw/perpetual/kraken
matches_history_2018-01.csv
matches_history_2018-02.csv
...
```

after this the following should work when run in the command line:
```bash
make prepare_data
```

this will create several .ftr (feather) data files in `data/prepared/spot(perpetual)/kraken/` 
that are used by functions from `src.datafeed_.kraken.downstream`
 
