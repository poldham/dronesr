#' Download Drones Literature and Patent datasets
#' @description Download folders containing scientific publications and patent
#'   data for drones from the open science framework project folder
#'   \url{https://osf.io/jr87e/}.
#' @param data One of "all", "lit" or "pat"
#' @param dest destination folder, cannot be null
#' @param conflicts Determines what happens if a file already exists. Choose
#'   from "overwrite" (default), "skip" or "error".
#' @return downloaded files
#' @source The Lens Scholarly and Patent databases at
#'   \url{https://www.lens.org/}.
#' @export
#' @importFrom osfr osf_retrieve_node
#' @importFrom osfr osf_ls_files
#' @importFrom osfr osf_download
#' @importFrom usethis ui_info
#' @importFrom usethis ui_done
#' @examples drones_download(data = "all", dest = "data", conflicts = "overwrite"),
#' drones_download(data = "lit", dest = "data", conflicts = "overwrite"),
#' drones_download(data = "pat", dest = "data", conflicts = "overwrite")
drones_download <- function(data = NULL, dest = NULL, conflicts = "overwrite") {

  # check that the dest file exists and if not create it
  # needs more where the dest exists and lit and pat exist.

  ui_info('If the lit and pat folders exist in the destination they will be overwritten.
          To change this use conflicts = "skip"')

  if(is.null(dest)) {

    dir.create(path = "dronesr_data")
    dir.create(path = "dronesr_data/lit")
    dir.create(path = "dronesr_data/pat")


    ui_info('dronesr_data containing lit and pat folders with csv and rds files
    created in working directory. To change this use dest = x')

  }


  if(!is.null(dest)) {
    if (!dir.exists(dest)){
      dir.create(dest)
      dir.create(path = glue::glue("{dest}/lit"))
      dir.create(path = glue::glue("{dest}/pat"))

      ui_info("{ui_value(dest)} dir created with lit and pat folders")
    } else {
      ui_info("{ui_value(dest)} dir exists")
    }
  }

  if(data == "all") {

    drones_lit <- osf_retrieve_node("https://osf.io/96w8j/")
    drones_lit_files <- osf_ls_files(drones_lit)
    osf_download(drones_lit_files, path = glue::glue("{dest}/lit"), conflicts = conflicts)

    ui_done("literature files downloaded in lit/csv and lit/rds folders")

    drones_pat <- osf_retrieve_node("https://osf.io/e6h8x/")
    drones_pat_files <- osf_ls_files(drones_pat)
    osf_download(drones_pat_files, path = glue::glue("{dest}/pat"), conflicts = conflicts)

    ui_done("literature files downloaded in pat/csv and pat/rds folders")

  }

  if (data == "lit") {

    drones_lit <- osf_retrieve_node("https://osf.io/96w8j/")
    drones_lit_files <- osf_ls_files(drones_lit)
    osf_download(drones_lit_files, path = glue::glue("{dest}/lit"), conflicts = conflicts)

    ui_done("literature files downloaded into lit/csv and lit/rds folders")

  }

  if (data == "pat") {

    drones_pat <- osf_retrieve_node("https://osf.io/e6h8x/")
    drones_pat_files <- osf_ls_files(drones_pat)
    osf_download(drones_pat_files, path = glue::glue("{dest}/pat"), conflicts = conflicts)

    ui_done("patent files downloaded in csv and rds folders")

  }

}
