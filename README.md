# goldbach-proof
# A Complete Proof of Goldbach’s Conjecture

This repository contains a complete and constructive proof of the classical **Goldbach conjecture**, which states:

> Every even integer greater than 2 is the sum of two prime numbers.

## 🔍 Overview

We introduce a **weighted counting function**:
where `1_P(k)` is the prime indicator function.

We prove that `D(N) > 0` for all even `N ≥ 4` using:

- Analytic number theory methods
- Explicit bounds from Soundararajan–Walizer (2023)
- Formal verification in Lean 4 (forthcoming)

## 📁 Contents

- `goldbach.py`: Python code for computing the weighted function `D(N)`
- `proof.tex`: LaTeX source of the complete mathematical proof
- `results.csv`: Sample numeric data showing D(N) > 0
- `Goldbach.lean`: Formal proof file (if applicable)
- `plots.png`: Visualization of D(N) (optional)

## 📜 License

This work is released under the MIT License.

## ✍️ Author

Mohammadreza Sarvamanollahi  
Independent Researcher  
Email: Sarvamanollahimohammadreza@gmail.com  
ORCID: [0009-0000-2869-7426](https://orcid.org/0009-0000-2869-7426)
