#' applicants dataset
#'
#' A dataset of applicant names that have been cleaned in VantagePoint
#' based on a shared priority number and then shared inventor name.
#' The separator for names in the records is "|" not ";;" as in the raw
#' Lens data.
#'
#' @format A data frame with 49411 rows and 2 variables:
#' \describe{
#' \item{lens_id}{}
#' \item{applicants}{}
#' }
#' @source \url{https://www.lens.org/}
"applicants"

#' applicants cleaned name dataset
#'
#' A dataset of cleaned applicant names. The names
#' have been separated onto individual rows per record.
#'
#' @format A data frame with 63243 rows and 2 variables:
#' \describe{
#' \item{lens_id}{}
#' \item{applicants_cleaned}{}
#' }
#' @source \url{https://www.lens.org/}
"applicants_cleaned"

#' applicants ranked dataset
#'
#' The applicants cleaned dataset ranked by number of
#' records. The top result is blank (NA).
#'
#' @format A data frame with 20176 rows and 2 variables:
#' \describe{
#' \item{applicants}{}
#' \item{n}{}
#' }
#' @source \url{https://www.lens.org/}
"applicants_ranked"

#' patent documents cited in the core pat dataset
#'
#' A dataset of 27578 rows of patent documented cited in the core patent (pat) set.
#'
#' @format A data frame with 27578 rows and 32 variables:
#' \describe{
#' \item{number}{}
#' \item{jurisdiction}{}
#' \item{kind}{}
#' \item{display_key}{}
#' \item{lens_id}{}
#' \item{publication_date}{}
#' \item{publication_year}{}
#' \item{application_number}{}
#' \item{application_date}{}
#' \item{priority_numbers}{}
#' \item{earliest_priority_date}{}
#' \item{title}{}
#' \item{abstract}{}
#' \item{applicants}{}
#' \item{inventors}{}
#' \item{owners}{}
#' \item{url}{}
#' \item{document_type}{}
#' \item{has_full_text}{}
#' \item{cites_patent_count}{}
#' \item{cited_by_patent_count}{}
#' \item{simple_family_size}{}
#' \item{extended_family_size}{}
#' \item{sequence_count}{}
#' \item{cpc_classifications}{}
#' \item{ipcr_classifications}{}
#' \item{us_classifications}{}
#' \item{npl_citation_count}{}
#' \item{npl_resolved_citation_count}{}
#' \item{npl_resolved_lens_ids}{}
#' \item{npl_resolved_external_ids}{}
#' \item{npl_citations}{}
#' }
#' @source \url{https://www.lens.org/}
"citedpat"


#' patent documents citing the core pat dataset
#'
#' A dataset of patent documents that cite the core patent (pat).
#' Citing patents are later filings that cite the core set.
#'
#' @format A data frame with 12261 rows and 32 variables:
#' \describe{
#' \item{number}{}
#' \item{jurisdiction}{}
#' \item{kind}{}
#' \item{display_key}{}
#' \item{lens_id}{}
#' \item{publication_date}{}
#' \item{publication_year}{}
#' \item{application_number}{}
#' \item{application_date}{}
#' \item{priority_numbers}{}
#' \item{earliest_priority_date}{}
#' \item{title}{}
#' \item{abstract}{}
#' \item{applicants}{}
#' \item{inventors}{}
#' \item{owners}{}
#' \item{url}{}
#' \item{document_type}{}
#' \item{has_full_text}{}
#' \item{cites_patent_count}{}
#' \item{cited_by_patent_count}{}
#' \item{simple_family_size}{}
#' \item{extended_family_size}{}
#' \item{sequence_count}{}
#' \item{cpc_classifications}{}
#' \item{ipcr_classifications}{}
#' \item{us_classifications}{}
#' \item{npl_citation_count}{}
#' \item{npl_resolved_citation_count}{}
#' \item{npl_resolved_lens_ids}{}
#' \item{npl_resolved_external_ids}{}
#' \item{npl_citations}{}
#' }
#' @source \url{https://www.lens.org/}
"citingpat"

#' cleaned inventor names
#'
#' A dataset of cleaned inventor names.
#' Names were cleaned in VantagePoint using fuzzy matching and shared priority
#' numbers followed by a second step of matching on shared cleaned applicant
#' names.
#'
#' Use the lens_id for table joins
#'
#' @format A data frame with 80065 rows and 3 variables:
#' \describe{
#' \item{lens_id}{}
#' \item{inventors_cleaned}{}
#' \item{records}{}
#' }
#' @source \url{https://www.lens.org/}
"inventors_cleaned"

#' raw inventor names
#'
#' A dataset of raw inventor names.
#' Use the lens_id for table joins.
#'
#' @format A data frame with 258564 rows and 2 variables:
#' \describe{
#' \item{lens_id}{}
#' \item{inventors}{}
#' }
#' @source \url{https://www.lens.org/}
"inventors"

#' inventors ranked
#'
#' A dataset of cleaned inventor names
#' ranked on number of re ords
#'
#' @format A data frame with 72584 rows and 2 variables:
#' \describe{
#' \item{n}{}
#' \item{inventors}{}
#' }
#' @source \url{https://www.lens.org/}
"inventors_ranked"

#' international patent classification (ipc) dataset
#'
#' A dataset of international patent classification (IPC) data.
#' The IPC codes can be joined to other tables using the lens_id.
#' Short descriptions have been added at the subclass level to
#' assist with visualisation but may need further editing for length.
#'
#' @format A data frame with 187512 rows and 5 variables:
#' \describe{
#' \item{lens_id}{}
#' \item{ipcr_classifications}{}
#' \item{subclass}{}
#' \item{description}{}
#' \item{level}{}
#' }
#' @source \url{https://www.lens.org/}
"ipc"

#' count of international patent classification (ipc) dataset
#'
#' A dataset of international patent classification subclass codes with count.
#'
#' @format A data frame with 520 rows and 2 variables:
#' \describe{
#' \item{description}{}
#' \item{n}{}
#' }
#' @source \url{https://www.lens.org/}
"ipc_count"

#' patent abstracts dataset
#'
#' A dataset of patent abstracts extracted from the patents file.
#'
#' @format A data frame with 49417 rows and 2 variables:
#' \describe{
#' \item{text}{}
#' \item{doc_id}{The lens_id}
#' }
#' @source \url{https://www.lens.org/}
"pat_abstract"

#' patent title dataset
#'
#' A dataset of patent titles extracted from the patents file.
#'
#' @format A data frame with 49417 rows and 2 variables:
#' \describe{
#' \item{text}{}
#' \item{doc_id}{}
#' }
#' @source \url{https://www.lens.org/}
"pat_title"

#' patent title noun phrases dataset
#'
#' A dataset of noun phrases from patent titles extracted from the patents file.
#' Extracted using spacyr.
#' @format A data frame with 140930 rows and 6 variables:
#' \describe{
#' \item{doc_id}{}
#' \item{text}{}
#' \item{root_text}{}
#' \item{start_id}{}
#' \item{root_id}{}
#' \item{length}{}
#' }
#' @source \url{https://www.lens.org/}
"pat_title_nouns"

#' patents dataset
#'
#' A dataset of patent documents containing the term drone or drones in
#' any field from the Lens database.
#'
#' Access the public collection at \url{https://www.lens.org/lens/search/patent/list?collectionId=199031}
#'
#' @format A data frame with 49417 rows and 32 variables:
#' \describe{
#' \item{number}{}
#' \item{jurisdiction}{}
#' \item{kind}{}
#' \item{display_key}{}
#' \item{lens_id}{}
#' \item{publication_date}{}
#' \item{publication_year}{}
#' \item{application_number}{}
#' \item{application_date}{}
#' \item{priority_numbers}{}
#' \item{earliest_priority_date}{}
#' \item{title}{}
#' \item{abstract}{}
#' \item{applicants}{}
#' \item{inventors}{}
#' \item{owners}{}
#' \item{url}{}
#' \item{document_type}{}
#' \item{has_full_text}{}
#' \item{cites_patent_count}{}
#' \item{cited_by_patent_count}{}
#' \item{simple_family_size}{}
#' \item{extended_family_size}{}
#' \item{sequence_count}{}
#' \item{cpc_classifications}{}
#' \item{ipcr_classifications}{}
#' \item{us_classifications}{}
#' \item{npl_citation_count}{}
#' \item{npl_resolved_citation_count}{}
#' \item{npl_resolved_lens_ids}{}
#' \item{npl_resolved_external_ids}{}
#' \item{npl_citations}{}
#' }
#' @source \url{https://www.lens.org/}
"pat"

#' literature title dataset
#'
#' Titles of scientific articles mentioning drones.
#'
#' @format A data frame with 45266 rows and 2 variables:
#' \describe{
#' \item{text}{}
#' \item{doc_id}{}
#' }
#' @source \url{https://www.lens.org/}
"lit_title"

#' noun phrases from the titles of scientific articles
#'
#' Noun phrases extracted from the itles of scientific articles using spacyr.
#'
#' @format A data frame with 161760 rows and 6 variables:
#' \describe{
#' \item{text}{}
#' \item{doc_id}{}
#' }
#' @source \url{https://www.lens.org/}
"lit_title_nouns"


#' literature abstract dataset
#'
#' Abstracts of scientific articles mentioning drones.
#'
#' @format A data frame with 45266 rows and 2 variables:
#' \describe{
#' \item{text}{}
#' \item{doc_id}{}
#' }
#' @source \url{https://www.lens.org/}
"lit_abstract"

#' scientific literature dataset
#'
#' Scientific publications mentioning drones from the Lens.
#' Access the public collection at \url{https://www.lens.org/lens/search/scholar/list?collectionId=199039}
#'
#' @format A data frame with 45266 rows and 29 variables:
#' \describe{
#' \item{lens_id}{}
#' \item{title}{}
#' \item{date_published}{}
#' \item{publication_year}{}
#' \item{publication_type}{}
#' \item{source_title}{}
#' \item{issns}{}
#' \item{publisher}{}
#' \item{source_country}{}
#' \item{authors}{}
#' \item{abstract}{}
#' \item{volume}{}
#' \item{issue_number}{}
#' \item{start_page}{}
#' \item{end_page}{}
#' \item{fields_of_study}{}
#' \item{keywords}{}
#' \item{mesh_terms}{}
#' \item{chemicals}{}
#' \item{funding}{}
#' \item{source_urls}{}
#' \item{external_url}{}
#' \item{pmid}{}
#' \item{doi}{}
#' \item{microsoft_academic_id}{}
#' \item{pmcid}{}
#' \item{citing_patents_count}{}
#' \item{references}{}
#' \item{citing_works_count}{}
#' }
#' @source \url{https://www.lens.org/}
"lit"

#' literature cited in the core patent dataset (npl)
#'
#' Scientific literature cited in the pat dataset.
#'
#' @format A data frame with 18747 rows and 29 variables:
#' \describe{
#' \item{lens_id}{}
#' \item{title}{}
#' \item{date_published}{}
#' \item{publication_year}{}
#' \item{publication_type}{}
#' \item{source_title}{}
#' \item{issns}{}
#' \item{publisher}{}
#' \item{source_country}{}
#' \item{authors}{}
#' \item{abstract}{}
#' \item{volume}{}
#' \item{issue_number}{}
#' \item{start_page}{}
#' \item{end_page}{}
#' \item{fields_of_study}{}
#' \item{keywords}{}
#' \item{mesh_terms}{}
#' \item{chemicals}{}
#' \item{funding}{}
#' \item{source_urls}{}
#' \item{external_url}{}
#' \item{pmid}{}
#' \item{doi}{}
#' \item{microsoft_academic_id}{}
#' \item{pmcid}{}
#' \item{citing_patents_count}{}
#' \item{references}{}
#' \item{citing_works_count}{}
#' }
#' @source \url{https://www.lens.org/}
"npl"
