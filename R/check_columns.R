#' Check Whether a Data Frame Has the Columns Needed for Conducting the
#' Multi-class Classification regarding Adverse Events
#'
#' @description
#' This function examines the input data frame and determines whether it has all
#' the necessary columns required for fitting the Multi-class Classification model
#' @author Houmin Xing
#' @param input_df the input data frame that will be examined for
#'                 "column completeness"
#' @returns a TRUE/FALSE result that indicates whether the input data frame
#'          has all the columns we need
check_columns = function(input_df){
  existing_cols = colnames(input_df)
  target_cols = colnames(df)

  # check "completeness"
  if(all(target_cols %in% existing_cols)){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}
