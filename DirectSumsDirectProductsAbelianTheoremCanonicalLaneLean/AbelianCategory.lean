import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure AbelianCategoryPackage where
  objects : Type
  morphisms : Type
  composition : morphisms -> morphisms -> morphisms
  identity : objects -> morphisms
  zeroObject : objects
  kernel : (f : morphisms) -> objects
  cokernel : (f : morphisms) -> objects
  abelianAxioms : Prop

structure AbelianCategoryEvidence (C : AbelianCategoryPackage) where
  abelianAxiomsClosed : C.abelianAxioms

def AbelianCategoryClosed (C : AbelianCategoryPackage) : Prop :=
  C.abelianAxioms

theorem abelian_category_closed_from_evidence (C : AbelianCategoryPackage) (E : AbelianCategoryEvidence C) : AbelianCategoryClosed C := by
  exact E.abelianAxiomsClosed

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse