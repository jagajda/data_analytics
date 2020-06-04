data{
	real nu;
	real mu;
	real sigma;
}
generated quantities{
	real y_sim = student_t_rng(nu, mu, sigma);
}