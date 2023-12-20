#' Fit a Multi-class Classification Model and Show the Evaluation Result
#'
#' @description
#' This function fits a multi-class classification model on the input
#' data frame using the random forest algorithm (applying 10-fold cross validation)
#' @author Houmin Xing & Yi Ren
#' @param input_df the input data frame that will be used in Multi-class
#'                 Classification model fitting; the default input is the
#'                 cleaned "df" dataset in our package
#' @importFrom dplyr select ungroup
#' @importFrom caret createDataPartition
#' @importFrom caret varImp
#' @importFrom randomForest randomForest
#' @returns a list that contains: 1. the call of the fitted random forest model
#'                                2. a confusion matrix made based on the
#'                                   fitted model
#'                                3. a calculated result of feature importance in
#'                                   our fitted random forest model
#' @export
ae_prediction = function(input_df = df){
  if(!check_columns(input_df)){
    warning("At least one necessary column is missing. Please check your input.")
  }
  set.seed(620) # for reproducibility

  input_df = input_df |> select(-SUBJID)

  input_df$max_aetoxgr = factor(input_df$max_aetoxgr)
  input_df$SEX = factor(input_df$SEX)
  input_df$race = factor(input_df$race)

  trainIndex <- createDataPartition(input_df$max_aetoxgr, p = 0.8, list = FALSE)
  training_data <- input_df[trainIndex, ]
  testing_data <- input_df[-trainIndex, ]

  rf_model <- randomForest(max_aetoxgr ~ ., data = training_data, ntree = 1000)
  predictions <- stats::predict(rf_model, newdata = testing_data)

  conf_matrix <- table(predictions, testing_data$max_aetoxgr,
                       dnn = list("Prediction", "Reality"))
  accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)

  result = list(model_summary = rf_model$call,
                confusion_matrix = conf_matrix,
                feature_importance = varImp(rf_model))
  return(result)
}
