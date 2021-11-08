## Getting Started

1. Create the `.env` by using `.env.example` as a reference: `cp .env.example .env`
2. Update the .env file with your correct local information

- DB_HOST=localhost
- DB_USER=labber
- DB_PASS=labber
- DB_NAME=midterm
- TWILIO_ACCOUNT_SID=sign up [Twilio](https://www.twilio.com/try-twilio) and get from the console
- TWILIO_AUTH_TOKEN=sign up [Twilio](https://www.twilio.com/try-twilio) and get from the console
- TWILIO_PHONE_FROM=sign up [Twilio](https://www.twilio.com/try-twilio) and get from the console
- OWNER_PHONE=+16477773366
- OWNER_GMAIL=owner@gmail.com (use less secure app)
- OWNER_PASSWORD=ownerpassword

3. Install dependencies: `npm i`
4. Fix to binaries for sass: `npm rebuild node-sass`
5. Reset database: `npm run db:reset`

- Check the db folder to see what gets created and seeded in the SDB

7. Run the server: `npm run local`

- Note: nodemon is used, so you should not have to restart your server

8. Visit `http://localhost:8080/`

## Dependencies

- Node 10.x or above
- NPM 5.x or above
- PG 6.x
- body-parser 1.x
- chalk 2.x
- cookie-session 1.x
- dotenv 2.x
- ejs 2.x
- express 4.x
- morgan 1.x
- node-sass-middleware 0.x
- nodemailer 6.x
- pg 8.x
- pg-native 3.x
- twilio 3.xx

Deployed Project Link: https://twilightplace.herokuapp.com/
