# SE-Vault: *A one-stop resource for all Software Engineers*

![Landing Page of SE-Vault](landing_page.png)

> **Abstract:** *COVID-19 has wreaked havoc on most of the world’s industries, of which, its impact on the software industry is significant. It showed companies the importance of having better tools for knowledge management and establishing a digital presence. However, the only constraint in the software industry is the rapidly changing technologies that keep emerging day-by-day. As a result, many organizations had to revamp their development and training programs. Apart from this, COVID-19 has also impacted the mental health of employees resulting in poor productivity. Our SE-VAULT application aims to make learning easy and effective. The back-end of the application is built using the FLASK web framework and the Python programming language while the front-end was created using HTML5, CSS3, and JavaScript. Our application comes with two types of user roles namely Admin and User. Admin has the authority to moderate content and manage all the users on the website. On the other hand, Users can create their accounts and access the website to view and upload relevant content. Some key features of the web service include Video Streaming across many genres, Recreational Sessions for mental well-being, Links to relevant resources/blogs, etc. Hence, through this application, we give special focus to helping new and existing software engineers learn and subsequently make the transition to trending technologies easier and more enjoyable. Furthermore, our application focuses on the mental well-being of the developers which is just as important as technical skills. It also helps beginners in the software industry interact with their mentors by streamlining virtual knowledge transfer sessions. Lastly, it serves as a “one-stop resource” for all software engineers helping them in both personal and professional development.*

## Resources

All the  is available via the following links:

- Final Report: 
- Code: https://github.com/ramapinnimty/CS5704-SE-Vault
- Google Drive data repository: https://drive.google.com/drive/folders/1OkXhUpwZYApqJhnk22TP9l0Xz4_qoyQY?usp=sharing

Download the .zip file from the backup folder. Alternaltively, you can choose to clone. Then unzip the file and install the requirements 

The official Google Drive link is here.

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

USE-CASE 1:
- Upload a video
Once the system is up and running i.e Server and Client
step 1: open this link: http://127.0.0.1:5500/
step 2: Click on Signup and create a new account.
step 3: Click on "upload" button on the Navigation bar.
step 4: Drag & drop or click in the white dashed box area and select a video you want to upload.
step 5: Now click the Upload button and this takes you back to the Dashboard.
Expected behaviour: You can verify the uploaded video by clicking on "My Videos" button from the NavBar.

![Upload a image](upload_video.png)



The corresponding instructions for Testing our framework are here.

## Contact
Mehul Bhanushali [(mehulb2203)](https://github.com/mehulb2203), Rama Krishna Pinnimty [(ramapinnimty)](https://github.com/ramapinnimty), Swanand Vaishampayan [(swanandsv)](https://github.com/swanandsv), Sushma Kakarla [(Sushk1821)](https://github.com/Sushk1821)

If you face any problem while running this code, you can contact us at {mehulb, ramapinnimty, swanandsv, sushmakumarik21}@vt.edu.

## Acknowledgements

We sincerely thank Dr. Chris Brown for giving us an opportunity to learn and expand our knowledge about various Software Engineering processes through this project.
