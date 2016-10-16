# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

medicines = Medicine.create([
  { name: 'Alimemazine', score: 1 },
  { name: 'Alprazolam', score: 1 },
  { name: 'Alverine', score: 1 },
  { name: 'Aripiprazole', score: 1 },
  { name: 'Asenapine', score: 1 },
  { name: 'Atenolol', score: 1 },
  { name: 'Bupropion', score: 1 },
  { name: 'Captopril', score: 1 },
  { name: 'Cetirizine', score: 2 },
  { name: 'Chlortalidone', score: 1 },
  { name: 'Cimetidine', score: 2 },
  { name: 'Clidinium', score: 1 },
  { name: 'Clorazepate', score: 1 },
  { name: 'Codeine', score: 1 },
  { name: 'Colchicine', score: 1 },
  { name: 'Desloratadine', score: 1 },
  { name: 'Diazepam', score: 1 },
  { name: 'Digoxin', score: 1 },
  { name: 'Dipyridamole', score: 1 },
  { name: 'Disopyramide', score: 1 },
  { name: 'Fentanyl', score: 1 },
  { name: 'Fluvoxamine', score: 1 },
  { name: 'Furosemide', score: 1 },
  { name: 'Haloperidol', score: 1 },
  { name: 'Hydralazine', score: 1 },
  { name: 'Hydrocortisone', score: 1 },
  { name: 'Iloperidone', score: 1 },
  { name: 'Isosorbide Dinitrate', score: 1 },
  { name: 'Isosorbide Mononitrate', score: 1 },
  { name: 'Levocetirizine', score: 1 },
  { name: 'Loperamide', score: 2 },
  { name: 'Loratadine', score: 1 },
  { name: 'Metoprolol', score: 1 },
  { name: 'Mirtazepine', score: 1 },
  { name: 'Morphine', score: 1 },
  { name: 'Nifedipine', score: 1 },
  { name: 'Paliperidone', score: 1 },
  { name: 'Prednisolone', score: 1 },
  { name: 'Quinidine', score: 1 },
  { name: 'Ranitidine', score: 1 },
  { name: 'Risperidone', score: 1 },
  { name: 'Theophylline', score: 1 },
  { name: 'Trazodone', score: 1 },
  { name: 'Triamterene', score: 1 },
  { name: 'Venlafaxine', score: 1 },
  { name: 'Warfarin', score: 1 },
  { name: 'Amantadine', score: 2 },
  { name: 'Baclofen', score: 2 },
  { name: 'Belladonna', score: 2 },
  { name: 'Carbamazepine', score: 2 },
  { name: 'Cyclobenzaprine', score: 2 },
  { name: 'Cyproheptadine', score: 2 },
  { name: 'Loratidine', score: 2 },
  { name: 'Loxapine', score: 2 },
  { name: 'Pethidine', score: 2 },
  { name: 'Levomepromazine', score: 2 },
  { name: 'Molindone', score: 2 },
  { name: 'Nefopam', score: 2 },
  { name: 'Oxcarbazepine', score: 2 },
  { name: 'Pimozide', score: 2 },
  { name: 'Prochlorperazine', score: 2 },
  { name: 'Amitriptyline', score: 3 },
  { name: 'Amoxapine', score: 3 },
  { name: 'Atropine', score: 3 },
  { name: 'Benztropine', score: 3 },
  { name: 'Brompheniramine', score: 3 },
  { name: 'Carbinoxamine', score: 3 },
  { name: 'Chlorphanamine', score: 3 },
  { name: 'Chlorpromazine', score: 3 },
  { name: 'Clemastine', score: 3 },
  { name: 'Clomipramine', score: 3 },
  { name: 'Clozapine', score: 2 },
  { name: 'Darifenacin', score: 3 },
  { name: 'Desipramine', score: 3 },
  { name: 'Dicycloverine', score: 3 },
  { name: 'Dimenhydrinate', score: 3 },
  { name: 'Diphenhydramine', score: 3 },
  { name: 'Doxepin', score: 3 },
  { name: 'Doxylamine', score: 3 },
  { name: 'Fesoterodine', score: 3 },
  { name: 'Flavoxate', score: 3 },
  { name: 'Hydroxyzine', score: 3 },
  { name: 'Hyoscyamine', score: 3 },
  { name: 'Imipramine', score: 3 },
  { name: 'Meclizine', score: 3 },
  { name: 'Methocarbamol', score: 3 },
  { name: 'Nortriptyline', score: 3 },
  { name: 'Olanzapine', score: 3 },
  { name: 'Orphenadrine', score: 3 },
  { name: 'Oxybutynin', score: 3 },
  { name: 'Paroxetine', score: 3 },
  { name: 'Perphenazine', score: 3 },
  { name: 'Promethazine', score: 3 },
  { name: 'Propantheline', score: 3 },
  { name: 'Propiverine', score: 3 },
  { name: 'Quetiapine', score: 1 },
  { name: 'Hyoscine Hydrobromide', score: 3 },
  { name: 'Solifenacin', score: 3 },
  { name: 'Thioridazine', score: 3 },
  { name: 'Tolterodine', score: 3 },
  { name: 'Trifluoperazine', score: 3 },
  { name: 'Trihexyphenidyl', score: 3 },
  { name: 'Trimipramine', score: 3 },
  { name: 'Trospium', score: 3 }
])

Medicine.where(name: 'Alimemazine').first.brands.create(name: 'Theralen™')
Medicine.where(name: 'Alprazolam').first.brands.create(name: 'Xanax™')
Medicine.where(name: 'Alverine').first.brands.create(name: 'Spasmonal™')
Medicine.where(name: 'Aripiprazole').first.brands.create(name: 'Abilify™')
Medicine.where(name: 'Asenapine').first.brands.create(name: 'Saphris™')
Medicine.where(name: 'Atenolol').first.brands.create(name: 'Tenormin™')
Medicine.where(name: 'Bupropion').first.brands.create(name: 'Wellbutrin™')
Medicine.where(name: 'Bupropion').first.brands.create(name: 'Zyban™')
Medicine.where(name: 'Captopril').first.brands.create(name: 'Capoten™')
Medicine.where(name: 'Cetirizine').first.brands.create(name: 'Zyrtec™')
Medicine.where(name: 'Chlortalidone').first.brands.create(name: 'Diuril™')
Medicine.where(name: 'Chlortalidone').first.brands.create(name: 'Hygroton™')
Medicine.where(name: 'Cimetidine').first.brands.create(name: 'Tagamet™')
Medicine.where(name: 'Clidinium').first.brands.create(name: 'Librax™')
Medicine.where(name: 'Clorazepate').first.brands.create(name: 'Tranxene™')
Medicine.where(name: 'Codeine').first.brands.create(name: 'Contin™')
Medicine.where(name: 'Colchicine').first.brands.create(name: 'Colcrys™')
Medicine.where(name: 'Desloratadine').first.brands.create(name: 'Clarinex™')
Medicine.where(name: 'Diazepam').first.brands.create(name: 'Valium™')
Medicine.where(name: 'Digoxin').first.brands.create(name: 'Lanoxin™')
Medicine.where(name: 'Dipyridamole').first.brands.create(name: 'Persantine™')
Medicine.where(name: 'Disopyramide').first.brands.create(name: 'Norpace™')
Medicine.where(name: 'Fentanyl').first.brands.create(name: 'Duragesic™')
Medicine.where(name: 'Fentanyl').first.brands.create(name: 'Actiq™')
Medicine.where(name: 'Fluvoxamine').first.brands.create(name: 'Luvox™')
Medicine.where(name: 'Furosemide').first.brands.create(name: 'Lasix™')
Medicine.where(name: 'Haloperidol').first.brands.create(name: 'Haldol™')
Medicine.where(name: 'Hydralazine').first.brands.create(name: 'Apresoline™')
Medicine.where(name: 'Hydrocortisone').first.brands.create(name: 'Cortef™')
Medicine.where(name: 'Hydrocortisone').first.brands.create(name: 'Cortaid™')
Medicine.where(name: 'Iloperidone').first.brands.create(name: 'Fanapt™')
Medicine.where(name: 'Isosorbide Dinitrate').first.brands.create(name: 'Isordil™')
Medicine.where(name: 'Isosorbide Mononitrate').first.brands.create(name: 'Ismo™')
Medicine.where(name: 'Levocetirizine').first.brands.create(name: 'Xyzal™')
Medicine.where(name: 'Loperamide').first.brands.create(name: 'Immodium™')
Medicine.where(name: 'Loratadine').first.brands.create(name: 'Claritin™')
Medicine.where(name: 'Metoprolol').first.brands.create(name: 'Lopressor™')
Medicine.where(name: 'Metoprolol').first.brands.create(name: 'Toprol™')
Medicine.where(name: 'Morphine').first.brands.create(name: 'MS Contin™')
Medicine.where(name: 'Morphine').first.brands.create(name: 'Avinza™')
Medicine.where(name: 'Nifedipine').first.brands.create(name: 'Procardia™')
Medicine.where(name: 'Nifedipine').first.brands.create(name: 'Adalat™')
Medicine.where(name: 'Paliperidone').first.brands.create(name: 'Invega™')
Medicine.where(name: 'Prednisolone').first.brands.create(name: 'Deltasone™')
Medicine.where(name: 'Prednisolone').first.brands.create(name: 'Sterapred™')
Medicine.where(name: 'Quinidine').first.brands.create(name: 'Quinaglute™')
Medicine.where(name: 'Ranitidine').first.brands.create(name: 'Zantac™')
Medicine.where(name: 'Risperidone').first.brands.create(name: 'Risperdal™')
Medicine.where(name: 'Theophylline').first.brands.create(name: 'Theodur™')
Medicine.where(name: 'Theophylline').first.brands.create(name: 'Uniphyl™')
Medicine.where(name: 'Trazodone').first.brands.create(name: 'Desyrel™')
Medicine.where(name: 'Triamterene').first.brands.create(name: 'Dyrenium™')
Medicine.where(name: 'Venlafaxine').first.brands.create(name: 'Effexor™')
Medicine.where(name: 'Warfarin').first.brands.create(name: 'Coumadin™')
Medicine.where(name: 'Amantadine').first.brands.create(name: 'Symmetrel™')
Medicine.where(name: 'Carbamazepine').first.brands.create(name: 'Tegretol™')
Medicine.where(name: 'Cyclobenzaprine').first.brands.create(name: 'Flexeril™')
Medicine.where(name: 'Cyproheptadine').first.brands.create(name: 'Periactin™')
Medicine.where(name: 'Loxapine').first.brands.create(name: 'Loxitane™')
Medicine.where(name: 'Pethidine').first.brands.create(name: 'Demerol™')
Medicine.where(name: 'Levomepromazine').first.brands.create(name: 'Levoprome™')
Medicine.where(name: 'Molindone').first.brands.create(name: 'Moban™')
Medicine.where(name: 'Nefopam').first.brands.create(name: 'Nefogesic™')
Medicine.where(name: 'Oxcarbazepine').first.brands.create(name: 'Trileptal™')
Medicine.where(name: 'Pimozide').first.brands.create(name: 'Orap™')
Medicine.where(name: 'Amitriptyline').first.brands.create(name: 'Elavil™')
Medicine.where(name: 'Amoxapine').first.brands.create(name: 'Asendin™')
Medicine.where(name: 'Atropine').first.brands.create(name: 'Sal-Tropine™')
Medicine.where(name: 'Benztropine').first.brands.create(name: 'Cogentin™')
Medicine.where(name: 'Brompheniramine').first.brands.create(name: 'Dimetapp™')
Medicine.where(name: 'Carbinoxamine').first.brands.create(name: 'Histex™')
Medicine.where(name: 'Carbinoxamine').first.brands.create(name: 'Carbihist™')
Medicine.where(name: 'Chlorphanamine').first.brands.create(name: 'Chlor-Trimeton™')
Medicine.where(name: 'Chlorpromazine').first.brands.create(name: 'Thorazine™')
Medicine.where(name: 'Clemastine').first.brands.create(name: 'Tavist™')
Medicine.where(name: 'Clomipramine').first.brands.create(name: 'Anafranil™')
Medicine.where(name: 'Clozapine').first.brands.create(name: 'Clozaril™')
Medicine.where(name: 'Darifenacin').first.brands.create(name: 'Enablex™')
Medicine.where(name: 'Desipramine').first.brands.create(name: 'Norpramin™')
Medicine.where(name: 'Dicycloverine').first.brands.create(name: 'Bentyl™')
Medicine.where(name: 'Dimenhydrinate').first.brands.create(name: 'Dramamine™')
Medicine.where(name: 'Diphenhydramine').first.brands.create(name: 'Benadryl™')
Medicine.where(name: 'Diphenhydramine').first.brands.create(name: 'Nytol™')
Medicine.where(name: 'Diphenhydramine').first.brands.create(name: 'Sleepeaze™')
Medicine.where(name: 'Doxepin').first.brands.create(name: 'Sinequan™')
Medicine.where(name: 'Doxylamine').first.brands.create(name: 'Unisom™')
Medicine.where(name: 'Fesoterodine').first.brands.create(name: 'Toviaz™')
Medicine.where(name: 'Flavoxate').first.brands.create(name: 'Urispas™')
Medicine.where(name: 'Hydroxyzine').first.brands.create(name: 'Atarax™')
Medicine.where(name: 'Hydroxyzine').first.brands.create(name: 'Vistaril™')
Medicine.where(name: 'Hyoscyamine').first.brands.create(name: 'Anaspaz™')
Medicine.where(name: 'Hyoscyamine').first.brands.create(name: 'Levsin™')
Medicine.where(name: 'Imipramine').first.brands.create(name: 'Tofranil™')
Medicine.where(name: 'Meclizine').first.brands.create(name: 'Antivert™')
Medicine.where(name: 'Methocarbamol').first.brands.create(name: 'Robaxin™')
Medicine.where(name: 'Nortriptyline').first.brands.create(name: 'Pamelor™')
Medicine.where(name: 'Olanzapine').first.brands.create(name: 'Zyprexa™')
Medicine.where(name: 'Orphenadrine').first.brands.create(name: 'Norflex™')
Medicine.where(name: 'Oxybutynin').first.brands.create(name: 'Ditropan™')
Medicine.where(name: 'Paroxetine').first.brands.create(name: 'Paxil™')
Medicine.where(name: 'Perphenazine').first.brands.create(name: 'Trilafon™')
Medicine.where(name: 'Promethazine').first.brands.create(name: 'Phenergan™')
Medicine.where(name: 'Propantheline').first.brands.create(name: 'Pro-Banthine™')
Medicine.where(name: 'Propiverine').first.brands.create(name: 'Detrunorm™')
Medicine.where(name: 'Quetiapine').first.brands.create(name: 'Seroquel™')
Medicine.where(name: 'Hyoscine Hydrobromide').first.brands.create(name: 'Transderm Scop™')
Medicine.where(name: 'Solifenacin').first.brands.create(name: 'Vesicare™')
Medicine.where(name: 'Thioridazine').first.brands.create(name: 'Mellaril™')
Medicine.where(name: 'Tolterodine').first.brands.create(name: 'Detrol™')
Medicine.where(name: 'Trifluoperazine').first.brands.create(name: 'Stelazine™')
Medicine.where(name: 'Trihexyphenidyl').first.brands.create(name: 'Artane™')
Medicine.where(name: 'Trimipramine').first.brands.create(name: 'Surmontil™')
Medicine.where(name: 'Trospium').first.brands.create(name: 'Sanctura™')
