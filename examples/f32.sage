problem = ThreeGraphProblem(6, forbid="5:123124125345")
construction = ThreeGraphBlowupConstruction("2:122", weights=[1,2])
problem.set_extremal_construction(construction)
problem.solve_sdp()
problem.make_exact()