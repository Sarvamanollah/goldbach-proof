import math

def is_prime(n):
    if n < 2:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    for i in range(3, int(n**0.5)+1, 2):
        if n % i == 0:
            return False
    return True

def D(N):
    """
    Computes the weighted Goldbach function D(N).
    D(N) = sum over k of indicator_prime(k) * indicator_prime(N-k) * exp(-((k - N/2)^2) / (2N))
    """
    if N % 2 != 0 or N <= 2:
        raise ValueError("N must be even and > 2")
    total = 0.0
    center = N / 2
    for k in range(2, N - 1):
        if is_prime(k) and is_prime(N - k):
            weight = math.exp(-((k - center) ** 2) / (2 * N))
            total += weight
    return total

if __name__ == "__main__":
    N = 100
    print(f"D({N}) = {D(N)}")