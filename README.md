# Barcamp Nametag Generator

This is a nifty little tool to generate personalized nametags for each registered attendee of __Barcamp Graz__.

## Can this be used for other Barcamps / events?

Sure! Just replace the __template.png__ file with an image that fits your event.

## Requirements

At least Ruby 1.9 installed

## Setup

Clone this project to your local workstation:

```bash
git clone https://github.com/jaybrueder/barcamp-nametag-generator.git
```

Then navigate into the directory and install all gem dependencies

```
cd barcamp-nametag-generator

bundle install
```

## Generating nametags

Add a __attendee.csv__ file to the project directory. An example can be found further below.

Then just run the Ruby script. It will generate one __nametags.pdf__ PDF with a page for each nametag. The nametags will be formated in international A7 page size (+ bleed for printing).

```
ruby generate.rb
```

## Example CSV

```csv
id;firstName;lastName;tag1;tag2;tag3
1;Jürgen;Bröder;Webdesign;Photoshop;Beer
2;Andrea;Parvilion;UXCamp;UX;Camp
3;Max;Mustermann;Web-Development;Android;Whisky
4;Sting;;Tag1;Tag2;Tag3
```

## Authors #

|                      |                                              |
|:---------------------|:---------------------------------------------|
**Author**    | Jürgen Brüder (<hello@juergenbrueder.com>)