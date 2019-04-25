# rails_category
> Rails category gem.

## model
> The users table fileds.

| field       | type   | length | description          |
| ----------- | ------ | ------ | -------------------- |
| name        | string | -      | Category name        |
| description | string | -      | Category description |
| parent_id   | string | -      | Category parent id   |

```shell
./bin/rails g model Category name:string description:string parent_id:references
```


## resources
- https://ruby-china.github.io/rails-guides/association_basics.html#self-joins
- https://stackoverflow.com/questions/22815009/add-a-reference-column-migration-in-rails-4
- https://ruby-china.org/topics/20322