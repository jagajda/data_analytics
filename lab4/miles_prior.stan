data {
	real sigma;
    int M;
    vector[M] miles;
}
generated quantities {
    real theta = fabs(normal_rng(0, sigma));
    int y_sim[M];
    for (k in 1:M) {
        y_sim[k] = poisson_rng(theta*miles[k]);
    }
}