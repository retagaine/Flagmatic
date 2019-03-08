problem = ThreeGraphProblem(6, forbid=[(4,4), "6:123124134125245136346156"])
construction = ThreeGraphBlowupConstruction("3:112223331123")
#construction = Construction17()
problem.set_extremal_construction(construction)
problem.add_sharp_graphs(4, 26, 32, 184, 313, 712, 714, 860, 866)
problem.solve_sdp(True, solver="sdpa_dd", force_sharp_graphs=True)
#problem.solve_sdp(True, force_zero_eigenvectors=True, force_sharp_graphs=True, use_initial_point=True)
problem.make_exact(2^30)