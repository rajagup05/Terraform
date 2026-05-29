

## Joins in terraform

The Terraform join function combines a list of strings into a single string, inserting a specified separator between each element. It is a built-in string manipulation function and cannot be used to combine two lists directly (use concat for that).

### Syntax

```
join(separator, list)
```

Here, `seperator`: The string delimiter placed between individual elements (e.g., ",", "-", " ").

`list` : The list or tuple containing the string elements you want to merge.

### Examples

