data{
	real alpha;
	real beta;
}

generated quantities{
	real y_sim=gamma_rng(alpha, beta);
}