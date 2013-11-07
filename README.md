ruby2 cookbook
===============
This cookbook removes system Ruby packages and installs from source.

Attributes
----------
#### ruby2::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:ruby2][:uninstall_packages]</tt></td>
    <td>Array</td>
    <td>System Ruby packages to be uninstalled</td>
    <td><tt>['ruby', 'rubygems', 'ruby1.8', 'ruby1.9.1', 'ruby1.9.3']</tt></td>
  </tr>
  <tr>
    <td><tt>[:ruby2][:version]</tt></td>
    <td>String</td>
    <td>Ruby version to be installed</td>
    <td><tt>'2.0.0-p247'</tt></td>
  </tr>
  <tr>
    <td><tt>[:ruby2][:source_url]</tt></td>
    <td>String</td>
    <td>URL of the Ruby source archive</td>
    <td><tt>'http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz'</tt></td>
  </tr>
</table>

Usage
-----
#### ruby2::default

Just include `ruby2::default` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ruby2::default]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author:: Cassiano Leal (<cassianoleal@gmail.com>)
