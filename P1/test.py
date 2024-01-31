from scipy import spatial
vec1 = [41.162, 84.875, 76.402, 84.074,217.096,51.634,49.23,37.665,50.042,36.521]
vec2 = [42.145,85.342,75.99,84.147,218.383,49.616,48.028,37.393,49.367,35.797]
cos_sim = 1 - spatial.distance.cosine(vec1, vec2)
print(cos_sim)