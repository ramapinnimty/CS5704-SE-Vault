# CS5704-SE-Vault
Official Project Page for the team Root_Mean_Square.

Download the .zip file from the backup folder. Alternaltively, you can choose to clone. Then unzip the file and install the requirements 


Install MySQL from 


To avoid any conflicts, we recommend to create a virtual environment.
COMMAND: conda create testEnv
conda activate testEnv

pip install -r requirements.txt

Download python 3.8.8 using: https://www.python.org/downloads/release/python-388/
Download xammp using: https://www.apachefriends.org/index.html 
Download mysqlworkben using : https://dev.mysql.com/downloads/workbench/

Go to xammp and click on start for the MySQL module.
Initializing databases:
Using the script in database directory just run all the commands at once in MySQLWorkbench from the se-vault.sql file.


once database is setup start the server and client for se-vault in different terminals.

dir: se-vault
python ./Client/client.py
python ./Server/server.py

