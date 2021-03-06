problem = GraphProblem(7, forbid_induced=(3,3), density=(6,0), minimize=True)
problem.set_inactive_types(1, 2, 4, 7, 9)
construction = GraphBlowupConstruction("g:12131415162728292a373b3c3d484b4e4f595c5e5g6a6d6f6g7e7f7g8c8d8g9b9d9fabacaebgcfde")
problem.set_extremal_construction(construction)
problem.solve_sdp(show_output=True, solver="sdpa_dd")
#problem.solve_sdp(show_output=True, force_sharp_graphs=True)
problem.make_exact(2^30)