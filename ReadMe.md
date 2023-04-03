# LBTT Calculator

A simple Ruby application to calculate the Land and Buildings Transaction Tax (LBTT) in Scotland. This tax is levied on property purchases based on the price of the property and varies according to specific tax bands. https://revenue.scot/taxes/land-buildings-transaction-tax

## Assumptions

This calculator makes the following assumptions:

The buyer of the house currently owns a property and lives in it as their main residence.
The buyer does not conduct any kind of business activity from their house i.e., it is purely for personal use.
The buyer does not own any other properties.
At the end of the purchase, the buyer will still only own one house i.e., they intend to sell their current home at the same date they buy the new one.
Please note that these assumptions are made to simplify the calculation process. In real-life scenarios, additional factors may affect the tax calculation.

## Getting Started

These instructions will help you set up the project on your local machine for development and testing purposes.

## Prerequisites

You will need Ruby installed on your machine. To check if Ruby is installed, run the following command:

`ruby -v`
If Ruby is not installed, please follow the instructions on the official Ruby website to install it.

## Installation

Clone this repository:

`git clone https://github.com/your_username/lbtt_calculator.git`

Navigate to the project directory:

`cd lbtt_calculator`

Install required Ruby gems: (Rspec is the only gem)

`bundle install`

## Usage

To use the LBTT Calculator, you can create a new instance of the LBTT_Calculator class with the house price as the argument and call the calculate method. Here's an example:

require_relative 'lbtt_calculator'

```
calculator = LBTT_Calculator.new(300_000)
puts "LBTT: £#{calculator.calculate}"
```

This example calculates the LBTT for a house worth £300,000.

## Running Tests

This project uses RSpec for testing. To run the test suite, execute the following command in the project directory:

`bundle exec rspec spec/lbtt_calculator_spec.rb`
