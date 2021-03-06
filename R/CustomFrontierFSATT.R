CustomFrontierFSATT <-
function(treatment, outcome, dataset, ratio, match.on, keep.vars,
         distance.mat){
    frontier <- distToFrontier(distance.mat)
    dataset$matched.to <- frontier$matched.to
    frontier$matched.to <- NULL
    out <- list(
        frontier = frontier,
        treatment = treatment,
        outcome = outcome,
        QOI = 'FSATT',
        metric = 'Custom',
        ratio = ratio,
        dataset = dataset,
        match.on = match.on,
        keep.vars = keep.vars
        )
    return(out)
}
