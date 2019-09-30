# Northwind Dataset Example

## Description of the dataset

This dataset has been adapted from https://github.com/pthom/northwind_psql. 

## How to use

### 1. Clone GitHub repository

Get started by cloning the repo and navigating into this directory:

```
git clone git@github.com:infoverload/datasets.git
cd datasets/datasets/sqlite/northwind
```

### 2. Launch Prisma's development mode to access Prisma Studio

Prisma's development mode provides you with an endpoint for Prisma Studio (note that you need to install the Node.js dependencies first since the `prisma2` CLI is included there):

```
npm install
npm run prisma2 dev
```

You can now open Prisma Studio on: [`http://localhost:5555`](http://localhost:5555).

### 3. (Optional) Run demo script

This folder also contains a runnable demo script that you can execute as follows:

```
npm start 
```

Expand below to see what that console output looks like.

<details><summary>See console ouput</summary>
<br />

```js
[
  {
    employee_id: 1,
    address: '507 - 20th Ave. E.\\nApt. 2A',
    city: 'Seattle',
    country: 'USA',
    extension: '5467',
    firstName: 'Nancy',
    homePhone: '(206) 555-9857',
    lastName: 'Davolio',
    notes: 'Education includes a BA in psychology from Colorado State ' +
      'University in 1970.  She also completed The Art of the ' +
      'Cold Call.  Nancy is a member of Toastmasters ' +
      'International.',
    photoPath: 'http://accweb/emmployees/davolio.bmp',
    postalCode: '98122',
    region: 'WA',
    title: 'Sales Representative',
    titleOfCourtesy: 'Ms.'
  },
  {
    employee_id: 2,
    address: '908 W. Capital Way',
    city: 'Tacoma',
    country: 'USA',
    extension: '3457',
    firstName: 'Andrew',
    homePhone: '(206) 555-9482',
    lastName: 'Fuller',
    notes: 'Andrew received his BTS commercial in 1974 and a Ph.D. in ' +
      'international marketing from the University of Dallas in 1981.  ' +
      'He is fluent in French and Italian and reads German.  He joined ' +
      'the company as a sales representative, was promoted to sales ' +
      'manager in January 1992 and to vice president of sales in March ' +
      '1993.  Andrew is a member of the Sales Management Roundtable, ' +
      'the Seattle Chamber of Commerce, and the Pacific Rim Importers ' +
      'Association.',
    photoPath: 'http://accweb/emmployees/fuller.bmp',
    postalCode: '98401',
    region: 'WA',
    title: 'Vice President, Sales',
    titleOfCourtesy: 'Dr.'
  },
  {
    employee_id: 3,
    address: '722 Moss Bay Blvd.',
    city: 'Kirkland',
    country: 'USA',
    extension: '3355',
    firstName: 'Janet',
    homePhone: '(206) 555-3412',
    lastName: 'Leverling',
    notes: 'Janet has a BS degree in chemistry from Boston College ' +
      '(1984).  She has also completed a certificate program in ' +
      'food retailing management.  Janet was hired as a sales ' +
      'associate in 1991 and promoted to sales representative in ' +
      'February 1992.',
    photoPath: 'http://accweb/emmployees/leverling.bmp',
    postalCode: '98033',
    region: 'WA',
    title: 'Sales Representative',
    titleOfCourtesy: 'Ms.'
  },
  {
    employee_id: 4,
    address: '4110 Old Redmond Rd.',
    city: 'Redmond',
    country: 'USA',
    extension: '5176',
    firstName: 'Margaret',
    homePhone: '(206) 555-8122',
    lastName: 'Peacock',
    notes: 'Margaret holds a BA in English literature from ' +
      'Concordia College (1958) and an MA from the American ' +
      'Institute of Culinary Arts (1966).  She was assigned to ' +
      'the London office temporarily from July through ' +
      'November 1992.',
    photoPath: 'http://accweb/emmployees/peacock.bmp',
    postalCode: '98052',
    region: 'WA',
    title: 'Sales Representative',
    titleOfCourtesy: 'Mrs.'
  },
  {
    employee_id: 5,
    address: '14 Garrett Hill',
    city: 'London',
    country: 'UK',
    extension: '3453',
    firstName: 'Steven',
    homePhone: '(71) 555-4848',
    lastName: 'Buchanan',
    notes: 'Steven Buchanan graduated from St. Andrews University, Scotland, ' +
      'with a BSC degree in 1976.  Upon joining the company as a sales ' +
      'representative in 1992, he spent 6 months in an orientation ' +
      'program at the Seattle office and then returned to his permanent ' +
      'post in London.  He was promoted to sales manager in March 1993. ' +
      ' Mr. Buchanan has completed the courses Successful Telemarketing ' +
      'and International Sales Management.  He is fluent in French.',
    photoPath: 'http://accweb/emmployees/buchanan.bmp',
    postalCode: 'SW1 8JR',
    region: null,
    title: 'Sales Manager',
    titleOfCourtesy: 'Mr.'
  },
  {
    employee_id: 6,
    address: 'Coventry House\\nMiner Rd.',
    city: 'London',
    country: 'UK',
    extension: '428',
    firstName: 'Michael',
    homePhone: '(71) 555-7773',
    lastName: 'Suyama',
    notes: 'Michael is a graduate of Sussex University (MA, economics, 1983) ' +
      'and the University of California at Los Angeles (MBA, marketing, ' +
      '1986).  He has also taken the courses Multi-Cultural Selling and ' +
      'Time Management for the Sales Professional.  He is fluent in ' +
      'Japanese and can read and write French, Portuguese, and Spanish.',
    photoPath: 'http://accweb/emmployees/davolio.bmp',
    postalCode: 'EC2 7JR',
    region: null,
    title: 'Sales Representative',
    titleOfCourtesy: 'Mr.'
  },
  {
    employee_id: 7,
    address: 'Edgeham Hollow\\nWinchester Way',
    city: 'London',
    country: 'UK',
    extension: '465',
    firstName: 'Robert',
    homePhone: '(71) 555-5598',
    lastName: 'King',
    notes: 'Robert King served in the Peace Corps and traveled extensively before ' +
      'completing his degree in English at the University of Michigan in 1992, ' +
      'the year he joined the company.  After completing a course entitled ' +
      'Selling in Europe, he was transferred to the London office in March ' +
      '1993.',
    photoPath: 'http://accweb/emmployees/davolio.bmp',
    postalCode: 'RG1 9SP',
    region: null,
    title: 'Sales Representative',
    titleOfCourtesy: 'Mr.'
  },
  {
    employee_id: 8,
    address: '4726 - 11th Ave. N.E.',
    city: 'Seattle',
    country: 'USA',
    extension: '2344',
    firstName: 'Laura',
    homePhone: '(206) 555-1189',
    lastName: 'Callahan',
    notes: 'Laura received a BA in psychology from the ' +
      'University of Washington.  She has also completed a ' +
      'course in business French.  She reads and writes ' +
      'French.',
    photoPath: 'http://accweb/emmployees/davolio.bmp',
    postalCode: '98105',
    region: 'WA',
    title: 'Inside Sales Coordinator',
    titleOfCourtesy: 'Ms.'
  },
  {
    employee_id: 9,
    address: '7 Houndstooth Rd.',
    city: 'London',
    country: 'UK',
    extension: '452',
    firstName: 'Anne',
    homePhone: '(71) 555-4444',
    lastName: 'Dodsworth',
    notes: 'Anne has a BA degree in English from St. ' +
      'Lawrence College.  She is fluent in French and ' +
      'German.',
    photoPath: 'http://accweb/emmployees/davolio.bmp',
    postalCode: 'WG2 7LT',
    region: null,
    title: 'Sales Representative',
    titleOfCourtesy: 'Ms.'
  }
]
```

</details>