# quarto-geotechnique

A [Quarto](https://quarto.org/) template for [Geotechnique](https://www.icevirtuallibrary.com/journal/jgeot) journal. Guide for authors can be found [here](https://www.icevirtuallibrary.com/page/authors/preparing-your-manuscript/guidelines-engineering).

## Creating a New Article

To create a new article using this format:

```bash
quarto use template haiiliin/quarto-geotechnique
```

This will create a new directory with an example document that uses this format.

## Using with an Existing Document

To add this format to an existing document:

```bash
quarto add haiiliin/quarto-geotechnique
```

Then, add the format to your document options:

```yaml
format:
  geotechnique-pdf: default
```

## Options

- `journal.heading`: The heading appears in the header of even pages.
- `journal.name_tag`: The name tag appears in the header of odd pages.
- `table.env`: The environment used for tables. Default is `table`. You can also use `table*` for two-column tables.
- `table.pos`: The position of tables in the document. Default is `!htb`.
  
  Because `longtable` does not support twocolumn document, the `longtable` environment is redefined to use the `tabular` environment. The drawback is that you have to specify the table caption and label manually before each table. For example:

  ```tex
  \def\tcaption{Table caption}
  \def\tlabel{tbl-label}
  ```

## Example

Here is the source code for a minimal sample document: [template.qmd](template.qmd), see the [PDF output](template.pdf).
