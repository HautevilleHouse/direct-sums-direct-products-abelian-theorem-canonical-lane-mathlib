import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure AbelianCategory (Obj : Type) (Hom : Obj → Obj → Type) where
  zeroObject : Obj
  zeroMorphism : (X Y : Obj) → Hom X Y
  kernels : (X Y : Obj) → (f : Hom X Y) → Obj
  cokernels : (X Y : Obj) → (f : Hom X Y) → Obj
  kernelProperty : Prop
  cokernelProperty : Prop
  abelianAxiom : Prop

structure AbelianCategoryEvidence (C : AbelianCategory) where
  kernelPropertyClosed : C.kernelProperty
  cokernelPropertyClosed : C.cokernelProperty
  abelianAxiomClosed : C.abelianAxiom

def AbelianCategoryClosed (C : AbelianCategory) : Prop :=
  C.kernelProperty ∧ C.cokernelProperty ∧ C.abelianAxiom

theorem abelian_category_closed_from_evidence (C : AbelianCategory) (E : AbelianCategoryEvidence C) : AbelianCategoryClosed C := by
  exact And.intro E.kernelPropertyClosed (And.intro E.cokernelPropertyClosed E.abelianAxiomClosed)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse