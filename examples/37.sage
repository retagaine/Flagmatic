problem = GraphProblem(8, forbid_induced=(7, 0), density=(3, 3), minimize=True, type_orders=[3, 6], types=["3:", "3:12", "3:1213", "3:121323", "6:", "6:12", "6:1213", "6:121314", "6:12131415", "6:1213141516", "6:1234", "6:121323", "6:121324", "6:121345", "6:12131423", "6:12131425", "6:12131456", "6:1213141523", "6:1213141526", "6:121314151623", "6:12132434", "6:12132435", "6:12134546", "6:1213142325", "6:1213142526", "6:1213142535", "6:1213142556", "6:121314152326", "6:121314152636", "6:121314253545", "6:121314253556", "6:12131415263646", "6:1213141526364656", "6:123456", "6:12132345", "6:12132456", "6:1213142345", "6:1213142356", "6:1213142536", "6:121314152346", "6:1213234546", "6:121314234546", "6:1213243545", "6:1213243546", "6:121314232536", "6:121314232545", "6:121314232546", "6:121314252635", "6:121314253656", "6:12131415232646", "6:1213243456", "6:121314253546", "6:121314234556", "6:12131415234656", "6:12131423254546", "6:12131425263536", "6:12131425354656", "6:1213141523264656", "6:12131423253645", "6:121324354656", "6:12131425263546", "6:12131423254656", "6:1213142325364546", "6:1213142526353645", "6:121314252635364546"])
construction = GraphBlowupConstruction("6:112233445566", phantom_edge=(1, 2))
problem.set_extremal_construction(construction)
problem.solve_sdp(True, solver="sdpa_dd")
problem.make_exact(2^30)