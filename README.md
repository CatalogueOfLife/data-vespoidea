# Vespoidea ColDP Archive
A ColDP archive for the [vespid wasps](https://www.catalogueoflife.org/data/taxon/VP) in [Catalogue of Life](https://www.catalogueoflife.org/data/dataset/1037), originally created by [ZOBODAT](http://www.zobodat.at/).

While under testing the dataset is indexed here:
https://www.dev.checklistbank.org/dataset/54104

## Changelog from original ZOBODAT dataset


### Initial cleanup
References were normalised, taking down the numbers from 2037 to just 113 unique references.


## Get involved
We keep the data as Tab delimited files (TSV) that together represent a [ColDP archive](https://github.com/CatalogueOfLife/coldp/blob/master/README.md).
Editing of TSV files can be done locally with simple text editors but also spreadsheet applications
and tools like [OpenRefine](http://openrefine.org) or online editors like [Datablist](https://app.datablist.com/)

## Postgres editing
The schema definition in `schema-pg.sql` allows for simple import/export of the TSV files into a local postgres database.
Larger changes to the data can then be done in a more controlled environment with relational constraints.

Loading:
```
\copy reference from 'Reference.tsv' NULL AS ''
\copy name_usage from 'NameUsage.tsv' NULL AS ''
```

Writing:
```
\copy (SELECT id, doi, type, author, editor, issued, title, container_author, container_title, volume, issue, edition, page, publisher, publisher_place, collection_title, collection_editor, link, accessed, version, isbn, issn, remarks, citation FROM reference) to 'Reference.tsv' NULL AS ''
\copy (SELECT id, parent_id, basionym_id, status, rank, scientific_name, authorship, name_status, name_reference_id, name_published_id_year, name_published_id_page, name_published_id_page_link, reference_id, scrutinizer, scrutinizer_date, extinct, temporal_range_start, temporal_range_end, remarks FROM name_usage) to 'NameUsage.tsv' NULL AS ''
```

Important: After writing, the previously existing header line needs to be added manually at the top!
