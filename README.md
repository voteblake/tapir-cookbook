tapir Cookbook
==============
TODO: Enter the cookbook description here.


Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

#### cookbooks
- `mongodb` - tapir needs mongodb.
- `application_ruby` - Extends the `application` cookbook with resources for Ruby deployment

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### tapir::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['tapir']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### tapir::default
TODO: Write usage instructions for each cookbook.

Just include `tapir` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[tapir]"
  ]
}
```


License and Authors
-------------------
Authors: TODO: List authors
