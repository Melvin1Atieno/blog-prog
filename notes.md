# Ruby notes

## Variable scopes

**Scope** defines where in a program a varaible is accessible. Ruby has four types of variable scope, *local*, *global*, *instance* and *class*.

Each variable type is declared by using a special character at the start of the varaible name.

|Character  | Variable scope        |
|----------:|:----------------------|
|$          | A global variable     |
|@          | An instance variable  |
|[a-z] or_  | A local variable      |
|[A-Z]      | A constant            |
|@@         |  A class variable     |


## Getter methods

In ruby, only methods can access instance variables.

```ruby
class Food
  def initialize(protein)
    @protein = protein
  end
end
bacon = Food.new(21)
bacon.protein
# NoMethodError: undefined method `protein'
```

solution? define own method?

```ruby
class Food
  def initialize(protein)
    @protein = protein
  end
  def protein
    @protein
  end
end
bacon = Food.new(21)
bacon.protein
# 21
```

The above *protein* method is known as a **Getter method**. A method that gets you the value of instance variables.
The getter method does not, however, let you change the values of the said variable. In a case where you want to do that, you might need to define another method

```ruby
class Food
  def initialize(protein)
    @protein = protein
  end
  def protein
    @protein
  end
  def protein=(value)
    @protein = value
  end
end
bacon.protein = 25
bacon.protein
# 25
```

shortcut?
Have ruby create the methods for you by calling **attr_accessor.**

```ruby
class Food
 attr_accessor :protein
 def initialize(protein)
   @protein = protein
 end
end
```

With the above ruby will create all the methods previously created.

### Other methods

**attr_reader** : Creates only the reader method
**attr_writer** : Creates only the writer method

### Multiple instance variables

```ruby
attr_reader :name, :value, :other_value
```

## Creating a new array

1. Method one

   ```ruby
      ary = [1, "two", 3.0] #=> [1, "two", 3.0]
   ```

2. Method two

    ```ruby
    ary = Array.new  #=> []
    ```

3. method three
Create while stating the initial size of the array.

    ```ruby
    Array.new(3) #=> [nil, nil, nil]
   ```

4. Method four
Create while stating initial size and object.

example 1.

    ```ruby
      Array.new(3, true) #=> [true, true, true]
    ```
example 2.

    ```ruby
    Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
    ```

## Inheritance

Inheritance is the relationship between two classes.
The benefit of inheritance is that other classes lower down the hierachy can get the features of those higher up. The classes can also add features of their own.

NB:**In ruby a class can inherit only from a single other class**

To indicate inheritance in ruby,

```ruby
  class Foo < Bar
```

This basically means, create class `Foo` which inherits from class `Bar`