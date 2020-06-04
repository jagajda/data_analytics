data{
	real alpha;
	real beta;
}

generated quantities{
	real y_sim = neg_binomial_rng(alpha, beta);
}