
# This file is automatically generated, you probably don't want to edit this

polytomousOptions <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "polytomousOptions",
    inherit = jmvcore::Options,
    public = list(
        initialize = function(
            vars = NULL,
            imeasure = TRUE,
            ise = TRUE,
            infit = FALSE,
            outfit = FALSE,
            reliability = TRUE,
            modelfit = FALSE,
            modelfitp = FALSE,
            mat = FALSE,
            thresh = FALSE,
            pmeasure = FALSE,
            icc = FALSE,
            wrightmap = TRUE,
            esc = FALSE, ...) {

            super$initialize(
                package="snowIRT",
                name="polytomous",
                requiresData=TRUE,
                ...)

            private$..vars <- jmvcore::OptionVariables$new(
                "vars",
                vars,
                suggested=list(
                    "continuous"),
                permitted=list(
                    "numeric"))
            private$..imeasure <- jmvcore::OptionBool$new(
                "imeasure",
                imeasure,
                default=TRUE)
            private$..ise <- jmvcore::OptionBool$new(
                "ise",
                ise,
                default=TRUE)
            private$..infit <- jmvcore::OptionBool$new(
                "infit",
                infit,
                default=FALSE)
            private$..outfit <- jmvcore::OptionBool$new(
                "outfit",
                outfit,
                default=FALSE)
            private$..reliability <- jmvcore::OptionBool$new(
                "reliability",
                reliability,
                default=TRUE)
            private$..modelfit <- jmvcore::OptionBool$new(
                "modelfit",
                modelfit,
                default=FALSE)
            private$..modelfitp <- jmvcore::OptionBool$new(
                "modelfitp",
                modelfitp,
                default=FALSE)
            private$..mat <- jmvcore::OptionBool$new(
                "mat",
                mat,
                default=FALSE)
            private$..thresh <- jmvcore::OptionBool$new(
                "thresh",
                thresh,
                default=FALSE)
            private$..pmeasure <- jmvcore::OptionBool$new(
                "pmeasure",
                pmeasure,
                default=FALSE)
            private$..icc <- jmvcore::OptionBool$new(
                "icc",
                icc,
                default=FALSE)
            private$..wrightmap <- jmvcore::OptionBool$new(
                "wrightmap",
                wrightmap,
                default=TRUE)
            private$..esc <- jmvcore::OptionBool$new(
                "esc",
                esc,
                default=FALSE)
            private$..total <- jmvcore::OptionOutput$new(
                "total")
            private$..personmeasure <- jmvcore::OptionOutput$new(
                "personmeasure")
            private$..pse <- jmvcore::OptionOutput$new(
                "pse")
            private$..pinfit <- jmvcore::OptionOutput$new(
                "pinfit")
            private$..poutfit <- jmvcore::OptionOutput$new(
                "poutfit")

            self$.addOption(private$..vars)
            self$.addOption(private$..imeasure)
            self$.addOption(private$..ise)
            self$.addOption(private$..infit)
            self$.addOption(private$..outfit)
            self$.addOption(private$..reliability)
            self$.addOption(private$..modelfit)
            self$.addOption(private$..modelfitp)
            self$.addOption(private$..mat)
            self$.addOption(private$..thresh)
            self$.addOption(private$..pmeasure)
            self$.addOption(private$..icc)
            self$.addOption(private$..wrightmap)
            self$.addOption(private$..esc)
            self$.addOption(private$..total)
            self$.addOption(private$..personmeasure)
            self$.addOption(private$..pse)
            self$.addOption(private$..pinfit)
            self$.addOption(private$..poutfit)
        }),
    active = list(
        vars = function() private$..vars$value,
        imeasure = function() private$..imeasure$value,
        ise = function() private$..ise$value,
        infit = function() private$..infit$value,
        outfit = function() private$..outfit$value,
        reliability = function() private$..reliability$value,
        modelfit = function() private$..modelfit$value,
        modelfitp = function() private$..modelfitp$value,
        mat = function() private$..mat$value,
        thresh = function() private$..thresh$value,
        pmeasure = function() private$..pmeasure$value,
        icc = function() private$..icc$value,
        wrightmap = function() private$..wrightmap$value,
        esc = function() private$..esc$value,
        total = function() private$..total$value,
        personmeasure = function() private$..personmeasure$value,
        pse = function() private$..pse$value,
        pinfit = function() private$..pinfit$value,
        poutfit = function() private$..poutfit$value),
    private = list(
        ..vars = NA,
        ..imeasure = NA,
        ..ise = NA,
        ..infit = NA,
        ..outfit = NA,
        ..reliability = NA,
        ..modelfit = NA,
        ..modelfitp = NA,
        ..mat = NA,
        ..thresh = NA,
        ..pmeasure = NA,
        ..icc = NA,
        ..wrightmap = NA,
        ..esc = NA,
        ..total = NA,
        ..personmeasure = NA,
        ..pse = NA,
        ..pinfit = NA,
        ..poutfit = NA)
)

polytomousResults <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "polytomousResults",
    inherit = jmvcore::Group,
    active = list(
        instructions = function() private$.items[["instructions"]],
        scale = function() private$.items[["scale"]],
        mat = function() private$.items[["mat"]],
        thresh = function() private$.items[["thresh"]],
        items = function() private$.items[["items"]],
        wrightmap = function() private$.items[["wrightmap"]],
        esc = function() private$.items[["esc"]],
        plot = function() private$.items[["plot"]],
        total = function() private$.items[["total"]],
        personmeasure = function() private$.items[["personmeasure"]],
        pse = function() private$.items[["pse"]],
        pinfit = function() private$.items[["pinfit"]],
        poutfit = function() private$.items[["poutfit"]]),
    private = list(),
    public=list(
        initialize=function(options) {
            super$initialize(
                options=options,
                name="",
                title="Polytomous Rasch Model",
                refs="snowIRT")
            self$add(jmvcore::Html$new(
                options=options,
                name="instructions",
                title="Instructions",
                visible=TRUE))
            self$add(jmvcore::Table$new(
                options=options,
                name="scale",
                title="Model Fit",
                rows=1,
                clearWith=list(
                    "vars"),
                refs="TAM",
                columns=list(
                    list(
                        `name`="name", 
                        `title`="", 
                        `type`="text", 
                        `content`="Scale"),
                    list(
                        `name`="reliability", 
                        `title`="Person Reliability", 
                        `visible`="(reliability)"),
                    list(
                        `name`="modelfit", 
                        `title`="MADaQ3", 
                        `visible`="(modelfit)"),
                    list(
                        `name`="modelfitp", 
                        `title`="p", 
                        `format`="zto,pvalue", 
                        `visible`="(modelfitp)"))))
            self$add(jmvcore::Table$new(
                options=options,
                name="mat",
                title="Q3 Correlation Matrix",
                rows="(vars)",
                visible="(mat)",
                refs="TAM",
                columns=list(
                    list(
                        `name`=".name", 
                        `title`="", 
                        `type`="text", 
                        `content`="($key)", 
                        `combineBelow`=TRUE))))
            self$add(jmvcore::Table$new(
                options=options,
                name="thresh",
                title="Partial credit model",
                rows="(vars)",
                visible="(thresh)",
                refs="TAM",
                columns=list(
                    list(
                        `name`="name", 
                        `title`="", 
                        `type`="number", 
                        `content`="($key)"),
                    list(
                        `name`="pmeasure", 
                        `title`="Measure", 
                        `visible`="(pmeasure)"))))
            self$add(jmvcore::Table$new(
                options=options,
                name="items",
                title="Item Statistics(Rating Scale Model)",
                visible="(imeasure || ise || infit || outfit)",
                rows="(vars)",
                clearWith=list(
                    "vars"),
                refs="TAM",
                columns=list(
                    list(
                        `name`="name", 
                        `title`="", 
                        `type`="text", 
                        `content`="($key)"),
                    list(
                        `name`="measure", 
                        `title`="Measure", 
                        `visible`="(imeasure)"),
                    list(
                        `name`="ise", 
                        `title`="S.E.Measure", 
                        `visible`="(ise)"),
                    list(
                        `name`="infit", 
                        `title`="Infit", 
                        `visible`="(infit)"),
                    list(
                        `name`="outfit", 
                        `title`="Outfit", 
                        `visible`="(outfit)"))))
            self$add(jmvcore::Image$new(
                options=options,
                name="wrightmap",
                title="Wright Map",
                width=500,
                height=500,
                renderFun=".wrightmapPlot",
                visible="(wrightmap)",
                refs="ShinyItemAnalysis"))
            self$add(jmvcore::Array$new(
                options=options,
                name="esc",
                title="Expected Score Curve",
                items="(vars)",
                template=jmvcore::Image$new(
                    options=options,
                    title="$key",
                    width=300,
                    height=300,
                    visible="(esc)",
                    renderFun=".escPlot",
                    clearWith=list())))
            self$add(jmvcore::Array$new(
                options=options,
                name="plot",
                title="Category Information",
                items="(vars)",
                template=jmvcore::Image$new(
                    options=options,
                    title="$key",
                    width=300,
                    height=300,
                    visible="(icc)",
                    renderFun=".plot",
                    clearWith=list())))
            self$add(jmvcore::Output$new(
                options=options,
                name="total",
                title="Total",
                varTitle="Total",
                measureType="continuous",
                clearWith=list(
                    "vars")))
            self$add(jmvcore::Output$new(
                options=options,
                name="personmeasure",
                title="Measure",
                varTitle="Measure",
                measureType="continuous",
                clearWith=list(
                    "vars")))
            self$add(jmvcore::Output$new(
                options=options,
                name="pse",
                title="SE",
                varTitle="SE",
                measureType="continuous",
                clearWith=list(
                    "vars")))
            self$add(jmvcore::Output$new(
                options=options,
                name="pinfit",
                title="Infit",
                varTitle="Infit",
                measureType="continuous",
                clearWith=list(
                    "vars")))
            self$add(jmvcore::Output$new(
                options=options,
                name="poutfit",
                title="Outfit",
                varTitle="Outfit",
                measureType="continuous",
                clearWith=list(
                    "vars")))}))

polytomousBase <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "polytomousBase",
    inherit = jmvcore::Analysis,
    public = list(
        initialize = function(options, data=NULL, datasetId="", analysisId="", revision=0) {
            super$initialize(
                package = "snowIRT",
                name = "polytomous",
                version = c(1,0,0),
                options = options,
                results = polytomousResults$new(options=options),
                data = data,
                datasetId = datasetId,
                analysisId = analysisId,
                revision = revision,
                pause = NULL,
                completeWhenFilled = FALSE,
                requiresMissings = FALSE)
        }))

#' Polytomous Rasch Model
#'
#' 
#' @param data The data as a data frame.
#' @param vars .
#' @param imeasure .
#' @param ise .
#' @param infit .
#' @param outfit .
#' @param reliability .
#' @param modelfit .
#' @param modelfitp .
#' @param mat .
#' @param thresh .
#' @param pmeasure .
#' @param icc .
#' @param wrightmap .
#' @param esc .
#' @return A results object containing:
#' \tabular{llllll}{
#'   \code{results$instructions} \tab \tab \tab \tab \tab a html \cr
#'   \code{results$scale} \tab \tab \tab \tab \tab a table \cr
#'   \code{results$mat} \tab \tab \tab \tab \tab a table \cr
#'   \code{results$thresh} \tab \tab \tab \tab \tab a table \cr
#'   \code{results$items} \tab \tab \tab \tab \tab a table \cr
#'   \code{results$wrightmap} \tab \tab \tab \tab \tab an image \cr
#'   \code{results$esc} \tab \tab \tab \tab \tab an array of plots \cr
#'   \code{results$plot} \tab \tab \tab \tab \tab an array of plots \cr
#'   \code{results$total} \tab \tab \tab \tab \tab an output \cr
#'   \code{results$personmeasure} \tab \tab \tab \tab \tab an output \cr
#'   \code{results$pse} \tab \tab \tab \tab \tab an output \cr
#'   \code{results$pinfit} \tab \tab \tab \tab \tab an output \cr
#'   \code{results$poutfit} \tab \tab \tab \tab \tab an output \cr
#' }
#'
#' Tables can be converted to data frames with \code{asDF} or \code{\link{as.data.frame}}. For example:
#'
#' \code{results$scale$asDF}
#'
#' \code{as.data.frame(results$scale)}
#'
#' @export
polytomous <- function(
    data,
    vars,
    imeasure = TRUE,
    ise = TRUE,
    infit = FALSE,
    outfit = FALSE,
    reliability = TRUE,
    modelfit = FALSE,
    modelfitp = FALSE,
    mat = FALSE,
    thresh = FALSE,
    pmeasure = FALSE,
    icc = FALSE,
    wrightmap = TRUE,
    esc = FALSE) {

    if ( ! requireNamespace("jmvcore", quietly=TRUE))
        stop("polytomous requires jmvcore to be installed (restart may be required)")

    if ( ! missing(vars)) vars <- jmvcore::resolveQuo(jmvcore::enquo(vars))
    if (missing(data))
        data <- jmvcore::marshalData(
            parent.frame(),
            `if`( ! missing(vars), vars, NULL))


    options <- polytomousOptions$new(
        vars = vars,
        imeasure = imeasure,
        ise = ise,
        infit = infit,
        outfit = outfit,
        reliability = reliability,
        modelfit = modelfit,
        modelfitp = modelfitp,
        mat = mat,
        thresh = thresh,
        pmeasure = pmeasure,
        icc = icc,
        wrightmap = wrightmap,
        esc = esc)

    analysis <- polytomousClass$new(
        options = options,
        data = data)

    analysis$run()

    analysis$results
}

