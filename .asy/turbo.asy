include graph;
include math;
real markscalefactor=0.03;

// Substitutes origin for (0,0) for ease of notation:
pair origin;
origin=(0,0);

// The foot of the perpendicular from P to line AB:
pair foot(pair P,pair A, pair B)
{ 
	real s; 
	s=dot(P-A,unit(B-A)); 
	return (scale(s)*unit(B-A)+A);
}

//Point tangent to circle unit distance away
pair tgtpt(pair A, circle d)
{
	
}