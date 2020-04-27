### Setup Instructions





### setup
clone repo
npm init??
npm install
webpack?
webpack-dev-server?

config file?
git ignore



# Sweet Corner Ecommerce Site
![Products Page Example Screenshot](sweet_corner.jpg?raw=true "Sweet Corner Products Page")
### <a href="http://sweet-corner.twalt007.com/">VIEW SITE</a> 

## Description
**Full-stack e-commerce site** where users browse and add products to a personal cart for checkout. 

Client built in **React JS**. Used **Redux** for **state management**, building own **thunk Middleware** for API calls; forms built with **Redux-forms**. Data validated with **Regex**. Styled with css and **Bootstrap** for grid-layout of products. 

Server **CRUD** abilities built in **Node.js** using **Express** for efficient routing. Database built with MySQL; data validated with **placeholders** and **'execute'** used to prevent SQL injections. Tracked carts with **jwt-simple encrypted tokens**. 


## Technologies
### Client
+ Bootstrap
+ React.js
+ JSX
+ Redux

### Server
+ Node.js
+ Express
+ MySQL
+ jwt-simple

## Clone and Code
### 1. System Requirements
This project requires that the latest versions of Node.js and MySql be installed on your machine.

#### Dev Environment
This project was coded in a dev environment configured with the assistance of LearningFuze Coding School.  If desired, the below link contains instructions for duplicating this environment. 
[Sample Dev Environment](https://github.com/twalt007/lfz-dev "LearningFuze Coding School - Dev Environment")

### 2. Clone and Install Dependencies
1. Fork this repository by clicking the "Fork" button at top right.
2. Clone the just-forked repository into the the directory containing your dev environment.
 - `git clone https://github.com/twalt007/sweet_corner_ecommerce.git`
2. Change directories into the newly cloned repo
 - `cd sweet_corner_ecommerce`
3. Install dependencies for 
 - **client**
 >- `npm --prefix client install`
 - **server**
 >- `npm install`

### 3. Set up Local Database for Backend Development
4. Set up your database for development purposes. 
 - This project used **phpMyAdmin**. Depending on your system, phpMyAdmin will require Apache and MySQL to be running. Into your commander type: 
 > - `service apache2 start` 
 > - `service mysql start`
 > - *Note: 'sudo' may be required before the command, depending on your OS* 
 - Go to [phpMyAdmin Login Link](http://localhost/phpmyadmin/ "PhpMyAdmin Login Page")
 - From sweet_corner_ecommerce repo, get database data from 'db' --> 'sql' --> *'db_dump'* file.
 - Dump into database
5. Create Config Files for database
 - Referencing template files 'db.json.template' and 'cart_jwt.json.template' files, in the **config** folder create the below files.
 > - db.json
 > - cart_jwt.json
 - You will need to generate a secure token for use as the secret in cart_jwt.json. [Password Generator Website](https://passwordsgenerator.net/ "Secure Password Generator Website") is a useful resource.  For optimum security and code combatability, using a password at least 25 characters long and excluding ambiguous characters is recommended.

### 4. Run the Code!
 6. `npm run dev` will run the full site, both client and server.
 - To run just the client, use `npm run dev:client`
 - For the server, `npm run dev:server`
 7. The project will start at localhost:3000, and should render a page with the logo and menu shown in the above image, along with the text of the 'home' page.

### 5. Build For Deployment
> 1. To deploy, run webpack in the client direcoty to build project
>    - `npm --prefix client run build`



Use Create-React-App to get the project running without  you will build the initial application using a handy tool called Create-React-App. This allows you to get up and running with a React app without the headache of setting up build-tool configurations. Go <a href="https://reactjs.org/docs/installation.html">HERE</a> to get started.
When the app building is finished run `cd yourappname` and run `npm start` to test it out.
Hit ctrl+c in the terminal when you want to stop the server that the above command starts.
For this project we will also need to install JQuery and ReactGA, do this by running `npm install jquery --save` and `npm install react-ga --save` in your terminal while inside your project folder. YOU MUST RUN THESE COMMANDS.
### 3. Download the template
Once you have a React app up and running by following the steps in the above link, download my code by hitting the green "clone or download" button above and hit download zip. All you will have to do now is replace the "public" and "src" folders of your newly built app with mine that you just downloaded. If you run `npm start` now, you should see that your app renders the same as the one at the live demo link above.
### 4. Replace images and fonts
Next, you will want to replace the images, and fonts if you like, with your own. All you have to do is replace the images at public/images/header-background.jpg, public/images/testimonials-bg.jpg and public/favicon.ico with your own. <em>YOU MUST KEEP THE SAME NAMES ON THE IMAGES.</em>  
### 5. Fill in your personal info
To populate the website with all of your own data, open the public/resumeData.json file and simply replace the data in there with your own. Images for the porfolio section are to be put in the public/images/portfolio folder.
### 6. Make any styling changes you would like
Of course, all of the code is there and nothing is hidden from you so if you would like to make any other styling changes, feel free!
### 7. Enjoy your new Resume Website
When you're all done, run `npm start` again and you'll see your new personal resume website! Congratulations!


## Credits
##### LearningFuze Coding Camp Dev Environment
[Sample Dev Environment](https://github.com/twalt007/lfz-dev "LearningFuze Coding School - Dev Environment")

## Have a *Sweet* Time with the Code!