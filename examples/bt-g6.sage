problem = ThreeGraphProblem(6, forbid=["6:123124125346356456", "6:123124135256346456", "6:123124135145256346", "6:123124134125126356456", "6:123124134125135126136456", "6:123124134125135245146246256", "6:123124134125135345126146346", "6:123124134125135235245146246"], forbid_homomorphic_images=True)
construction = ThreeGraphBlowupConstruction("5:123124134234135235145245", weights=[2/9, 2/9, 2/9, 2/9, 1/9])
problem.set_extremal_construction(construction)
problem.solve_sdp(True)
problem.make_exact(2^30)