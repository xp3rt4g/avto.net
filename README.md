# avto.net

avto.net is a clone of the website avto.net, created as a school project. The design is extremely similar to the original site, but the entire backend is made by me. 

## Description
avto.net is a website where you can log in and post or view advertisements for cars. There are 2 account options (well 3 if you count admin as one :P) - individual or a company. 

You can post cars, edit them or delete your posts. Admins can also manage different brands, models, colors, etc.

## Installation

Download the files and place them in a folder.

For the first installation run 

`bundle install`

`rake db:create`

`rake db:migrate`

After this the database and all the gems should be set.

You have to create your own .env file in the root of the project

In the .env file set your variables:

    POSTGRES_USER='postgres'
    POSTGRES_PASSWORD='yourpassword'
    POSTGRES_HOST='localhost' #localhost for development
    POSTGRES_DB='yourdbname'
    POSTGRES_TEST_DB='testdb'
    
    BUCKET_NAME=s3BucketName
    AWS_ACCESS_KEY_ID=AWSKey
    AWS_SECRET_ACCESS_KEY=secretAccesKey
    
    FACEBOOK_APP_ID=appID
    FACEBOOK_APP_SECRET=appSecret
    
    GOOGLE_OAUTH_CLIENT_ID=googleid.apps.googleusercontent.com
    GOOGLE_OAUTH_CLIENT_SECRET=clientSecret
    
    GITHUB_ID=yourid
    GITHUB_SECRET=yourSecret
    
    USERNAME=your_smtpusername@domain.com
    PASSWORD=smtpPass

Before your first use, you will have to add at least 1 city and the account types in MySQL by hand. You also have to add fuel types, gearboxes and car types. I did not make a special admin panel for those since they are pretty much the same all the time and they do not change.

Everything else can be done by an admin once you set one.

## Usage

Just log in and if your database is set correctly you are good to go!

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Language
The frontend is currently fully slovenian. If there is interest I can make it in english as well. 

Backend is fully english.
