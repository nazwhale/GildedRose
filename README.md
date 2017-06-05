# Gilded Rose kata
[![Build Status](https://travis-ci.org/nazwhale/GildedRose.svg?branch=master)](https://travis-ci.org/nazwhale/GildedRose)

### Installation

Clone repository:
```
$ git clone git@github.com:nazwhale/GildedRose.git
$ cd GildedRose
```

Install dependencies with bundle:
```
$ gem install bundler
$ bundle install
```

Run programme for 5 days:
```
$ ruby texttest_fixture.rb 5
```

### Task

The 'Gilded Rose' kata is an exercise in turning one long, knotty `if` statement (which nevertheless satisfies its requirements) into clean and testable code.

You are given one small feature to implement. However, the quality of the code means it is almost impossible to do. As a result, refactoring with an object-oriented approach is needed.

### Requirements

You are writing a programme for the owner of the 'Gilded Rose', a shop selling a variety of magical items.

Their requirements are:

- All items have a SellIn value which denotes the number of days we have to sell the item
- All items have a Quality value which denotes how valuable the item is
- At the end of each day our system lowers both values for every item

Additionally, individual items have specific needs:

- Once the sell by date has passed, Quality degrades twice as fast
- The Quality of an item is never negative
- "Aged Brie" actually increases in Quality the older it gets
- The Quality of an item is never more than 50
- "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
- "Backstage passes", like aged brie, increases in Quality as its SellIn value approaches;
	Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but
	Quality drops to 0 after the concert

Finally, one rule:
The `Item` class cannot be touched.

The definitive version of the kata can be found [here](https://github.com/emilybache/GildedRose-Refactoring-Kata/blob/master/GildedRoseRequirements.txt).

### Approach

As the code already worked, I decided to test each requirement using RSpec. Only once I had all my tests passing did I begin to refactor.

First I thought about which objects I would need. After a couple of diagrams I came to the conclusion that each item with specific needs would warrant it's own class, with another class for 'normal' objects.

It also became apparent that there was a lot of shared behaviour between these classes, so an `updates` module was created to store this.

### Future
I'd like to remove dependencies on argument order by using a hash.

I'd also like to dream up some more features to implement to test the agility of my code.

### Acknowledgements

This Kata was originally created by [Terry Hughes](http://twitter.com/TerryHughes). It is already on GitHub [here](https://github.com/NotMyself/GildedRose). See also [Bobby Johnson's description of the kata](http://iamnotmyself.com/2011/02/13/refactor-this-the-gilded-rose-kata/).
