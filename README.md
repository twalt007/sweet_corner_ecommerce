# Sweet Corner Ecommerce Site

### <a href="http://sweet-corner.twalt007.com/">VIEW LIVE SITE</a> 

<p align="center">
  <img height="500" alt="Products Page Example Screenshot" src="https://github.com/twalt007/sweet_corner_ecommerce/blob/master/client/dist/assets/images/sweet_corner.JPG">
</p>

## Description
This is a **Full-stack e-commerce site** where users browse and add products to a personal cart for checkout. 

Client built in **React JS**. Used **Redux** for **state management**, building own **thunk Middleware** for API calls; forms built with **Redux-forms**. Data validated with **Regex**. Styled with **CSS** and **Bootstrap** for grid-layout of products. 

Server **CRUD** abilities built in **Node.js** using **Express** for efficient routing. Database built with **MySQL**; data validated with **placeholders** and **'execute'** used to prevent SQL injections. Tracked carts and check-out sessions with **jwt-simple encrypted tokens**. 

**U-Auth and email form features still in development.*


## Technologies
### Client
+ Bootstrap
+ React.js
+ SCSS
+ Redux

### Server
+ Node.js
+ Express
+ MySQL
+ JSON Web Token

## Clone and Code (Set-up)
### 1. System Requirements
This project requires that the latest versions of Node.js and MySql be installed on your machine.

### 2. Fork and Install Dependencies
1. Fork this repository by clicking the "Fork" button at top right.
2. Clone the just-forked repository into the the directory containing your dev environment.
    - `git clone https://github.com/twalt007/sweet_corner_ecommerce.git`
3. Change directories into the newly cloned repo
    - `cd sweet_corner_ecommerce`
4. Install dependencies for 
    - **client:** `npm --prefix client install`
    - **server:** `npm install`

### 3. Set up Local Database for Backend Development
1. This project used **phpMyAdmin**, which requires **Apache** and **MySQL** to be running.  
    - To start, into your commander type:       
        - `sudo service apache2 start` 
        - `sudo service mysql start` 
    - Go to [phpMyAdmin Login Page](http://localhost/phpmyadmin/ "PhpMyAdmin Login Page")
    - From sweet_corner_ecommerce repo, get database data from 'db' --> 'sql' --> *'db_dump'* file.
    - Import into database
2. Create Config Files for database
    - In the **config** folder create the below files. (Reference template files 'db.json.template' and 'cart_jwt.json.template')
        - db.json
        - cart_jwt.json        
    - You will need to generate a secure token for use as the secret in cart_jwt.json. [Secure Password Generator Website](https://passwordsgenerator.net/ "Secure Password Generator Website") is a useful resource.  For optimum security and code combatability, using a password at least 25 characters long and excluding ambiguous characters is recommended.

### 4. Run the Code!
 1. `npm run dev` will run the full site, **both client and server**.
    - **Client Only:** `npm run dev:client`
    - **Server Only** `npm run dev:server`
 2. The project will start at **localhost:3000**, and should render a page with the logo and menu depicted in the image above, along with the home page text. 

### 5. Build For Deployment
1. To deploy, run webpack in the client directory to build project. From the command line type:
    - `npm --prefix client run build`

## Have a *Sweet* Time with the Code!