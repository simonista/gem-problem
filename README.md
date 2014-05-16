Gem Dependency Problem
======================

Bundler cannot resolve a chain of local dependencies.

Setup
-----

Let's say you have 3 gems, a-gem, b-gem, and c-gem, such that a-gem depends on
g-gem and b-gem depends on c-gem.  You are developing all these gems locally,
simultaneously, and they all live as siblings in a folder.

a-gem.gemspec lists b-gem as a dependency, and a-gem's Gemfile specifies the
local path where b-gem can be found.  b-gem as a similar pattern for c-gem.

Problem
-------

`bundle install` fails for a-gem, because it can't find c-gem, which is
a dependency of b-gem.  This is because bundle install reads the Gemfile for
a-gem, but only the .gemspec of b-gem (since it is a dependency), so it has no
information for where to locate c-gem.

Solution?
---------

The only solution I've found is to specify c-gem's location in a-gem's Gemfile.
But this seems sad -- a-gem doesn't directly care about c-gem and shouldn't
need to know anything about it.

**Is there a better way?**
