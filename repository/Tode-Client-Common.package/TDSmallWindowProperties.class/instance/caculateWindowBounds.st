window bounds
caculateWindowBounds
	| layoutExtent dict lw lo lh topHeight shellHeight browserHeight codeWidth shellExtent classCategories classes evaluator superclasses classDef instanceSelectors classSelectors configurations packages implementors app1 app2 app3 app4 context debugger inspector method codeHeight appExtent displayExtent debuggerWidth lcw lce projectList transcript classicClassDef classicClassButtonBar classicProtocol |
	displayExtent := Display usableArea extent.
	layoutExtent := displayExtent - (2 @ 2 * margin).
	lo := margin.
	dict := Dictionary new.
	debuggerWidth := codeWidth := layoutExtent x * codeWidthFactor.
	lcw := lw := layoutExtent x // (4.5 + extraLists).
	shellHeight := layoutExtent y * shellHeightFactor.
	browserHeight := layoutExtent y - shellHeight.
	topHeight := browserHeight * topHeightFactor.
	lh := browserHeight // 2.
	codeHeight := browserHeight - topHeight.
	lce := lcw @ lh.
	shellExtent := codeWidth @ shellHeight.
	appExtent := (layoutExtent x - codeWidth) @ shellHeight.
	superclasses := lo extent: lw @ topHeight.
	method := superclasses bottomLeft extent: codeWidth @ codeHeight.
	evaluator := method bottomLeft extent: shellExtent.
	classDef := superclasses topRight extent: (1.5 * lw) @ topHeight.
	classicClassDef := superclasses topRight extent: (1.5 * lw) @ (topHeight * 0.65).
	classicClassButtonBar := superclasses topRight + (0 @ (topHeight * 0.65)) extent: (1.5 * lw) @ (topHeight * 0.35).
	instanceSelectors := classDef topRight extent: lw @ topHeight.
	classicProtocol := instanceSelectors.
	classSelectors := instanceSelectors topRight extent: lw @ topHeight.
	implementors := method topRight extent: shellExtent x @ codeHeight.
	inspector := evaluator topRight extent: shellExtent.
	debugger := method topRight extent: debuggerWidth @ codeHeight.
	context := debugger bottomLeft extent: debuggerWidth @ shellExtent y.
	app1 := evaluator topRight extent: appExtent.
	app2 := evaluator topRight - (0 @ appExtent y) extent: appExtent.
	app3 := evaluator topRight extent: appExtent.
	app4 := evaluator topRight - (0 @ appExtent y) extent: appExtent.
	projectList := app1.
	transcript := projectList topRight + (0 @ (projectList height // 2))
		extent: (layoutExtent x - projectList topRight x) @ (projectList height // 2).
	dict
		at: #evaluator put: evaluator;
		at: #superclasses put: superclasses;
		at: #classDef put: classDef;
		at: #classicClassDef put: classicClassDef;
		at: #classicClassButtonBar put: classicClassButtonBar;
		at: #classicProtocol put: classicProtocol;
		at: #instanceSelectors put: instanceSelectors;
		at: #classSelectors put: classSelectors;
		at: #implementors put: implementors;
		at: #inspector put: inspector;
		at: #method put: method;
		at: #context put: context;
		at: #debugger put: debugger;
		at: #app1 put: app1;
		at: #app2 put: app2;
		at: #app3 put: app3;
		at: #app4 put: app4;
		at: #projectList put: projectList;
		at: #workspace put: method;
		at: #transcript put: transcript;
		yourself.
	classCategories := lo extent: lce.
	classes := classCategories bottomLeft extent: lce.
	configurations := lo extent: lw @ (lh // 2).
	packages := configurations bottomLeft extent: lw @ (lh // 2).
	dict
		at: #classCategories put: classCategories;
		at: #classes put: classes;
		at: #configurations put: configurations;
		at: #packages put: packages;
		yourself.
	^ dict