# Dashboard

Dashboard is a Ruby on Rails application that pulls data from the [Coinmarketcap API V1](https://coinmarketcap.com/api/documentation/v1/). 

The application pulls JSON data from the API, parses it and then displays the processed data. The Devise Gem is used for user authentication and saving user data. User data includes the owned amount, of an user defined currency, and the price at which the currency was bought. The app gives simple feedback in the form of profit/loss margins for each currency and the user's full portfolio. 

**Libraries or Gems used:**

* Devise for user authentication.
* Bootstrap for simple styling.

**Sample Screenshots:**

<img src="prices.png" width="1000">
<img src="portfolio.png" width="1000">

**Note:**

The app in the current for uses version 1 of the Public API. Coinmarketcap reciently release the professional version of the API and the public API will be taken offline on 4 December 2018. 
