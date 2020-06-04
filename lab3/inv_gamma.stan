data{
	real alpha;
	real beta;
}

generated quantities{
	real y_sim=inv_gamma_rng(alpha, beta);
}