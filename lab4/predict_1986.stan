data {
	real sigma;
    int M;
    vector[M] miles;
    int y[M];
}
parameters {
    real<lower=0>theta;
}
model {
    theta ~ normal(0, sigma);
    for (k in 1:M) {
        y[k] ~ poisson(miles[k]*theta);
    }
}
generated quantities {
    int y1986 = poisson_rng(9100*theta);
}