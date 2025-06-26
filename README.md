# Vespoidea
A TextTree archive for the [vespid wasps](https://www.catalogueoflife.org/data/taxon/VP) in [Catalogue of Life](https://www.catalogueoflife.org/data/dataset/1037), originally created by [ZOBODAT](http://www.zobodat.at/).
Since the data has not been updated since 2011, Catalogue of Life decided to place the content into a github repository for managing the data, correct mistakes and apply other changes that have been submitted via feedback
by the community. The dataset is hosted in [ChecklistBank](https://www.checklistbank.org/dataset/1037).


## Get involved
We keep the data as a human readable [TextTree](https://gbif.github.io/text-tree/) file, together with a file for the references.
That makes it simple for humans to directly work with the files and scan over the actual taxonomy tree.

All changes are tracked in github and you can use the [import history](https://www.checklistbank.org/dataset/1037/imports) and diff functions in ChecklistBank and see [changes over time](https://www.checklistbank.org/dataset/1037/diff).

### Issues
We use the [github issue system](https://github.com/CatalogueOfLife/data-vespoidea/issues/) to log and discuss problems.
Please use it if possible.
In addition ChecklistBank flags [potential issues](https://www.checklistbank.org/dataset/1037/issues) for us to review.


## Files
Information about the dataset as a whole and how to cite it is kept in metadata.yaml,

### Taxonomy
The main taxonomy tree lives in [taxonomy.txtree](taxonomy.txtree). 
It contains information about the name, authorship, classification, synonyms (=), original combination ($) and retains the original ZOBODAT identifiers.
You can use any plain text editor to modify the file, but we provide syntax highlighting for the [Sublime](https://gbif.github.io/text-tree/#sublime-syntax-highlighting) and the [VS Code editor](https://gbif.github.io/text-tree/#visual-studio-code-extension).

### References
We curate a list of references in a [BibTex file](reference.bib). 
References from this bibliography can then be [cited in the taxonomy file](https://github.com/CatalogueOfLife/coldp/blob/master/docs/publishing-guide-txtree.md).

BibTex content can be retrieved from CrossRef for most DOIs when known.
For example by using curl on the terminal like this:
> curl --location --silent --header "Accept: application/x-bibtex" https://doi.org/10.1080/11035890601282097 
> @article{Eriksson_2006,
    doi = {10.1080/11035890601282097},
    url = {https://doi.org/10.1080%2F11035890601282097},
    year = 2006,
    month = {jun},
    publisher = {Informa {UK} Limited},
    volume = {128},
    number = {2},
    pages = {97--101},
    author = {Mats E. Eriksson},
    title = {Polychaete jaw apparatuses and scolecodonts from the Silurian Ireviken Event interval of Gotland, Sweden},
    journal = {{GFF}}
}

There are also online editors, e.g. https://truben.no/latex/bibtex/#

In the future we consider to use Mendeley or Zotero to collaboratively manage references and export them to a BibTex file to be used in the repository.


### Github webhooks
Github webhooks are used to automatically update the copy in [ChecklistBank](https://www.checklistbank.org/dataset/1037) 
whenever a commit to the repository happens.



## Changelog from original ZOBODAT dataset
You can find all changes in the [commit history](https://github.com/CatalogueOfLife/data-vespoidea/commits/master/) of the github repository.


### Initial cleanup
References were normalised, taking down the numbers from 2037 to just 113 unique references.

