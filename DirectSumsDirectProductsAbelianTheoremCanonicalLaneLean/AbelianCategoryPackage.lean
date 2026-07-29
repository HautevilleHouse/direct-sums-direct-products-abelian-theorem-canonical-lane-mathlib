import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.DirectSumPackage
import HautevilleHouse.DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.DirectProductPackage

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure AbelianCategoryPackage where
  objectType : Type u
  morphismType : (A B : objectType) → Type v
  compositionDefined : Prop
  zeroObject : objectType
  kernelsExist : Prop
  cokernelsExist : Prop
  abelianAxiomsHold : Prop

structure AbelianCategoryEvidence (A : AbelianCategoryPackage) where
  compositionDefinedClosed : A.compositionDefined
  kernelsExistClosed : A.kernelsExist
  cokernelsExistClosed : A.cokernelsExist
  abelianAxiomsHoldClosed : A.abelianAxiomsHold

def AbelianCategoryClosed (A : AbelianCategoryPackage) : Prop :=
  A.compositionDefined ∧ A.kernelsExist ∧ A.cokernelsExist ∧ A.abelianAxiomsHold

theorem abelian_category_closed_from_evidence (A : AbelianCategoryPackage) (E : AbelianCategoryEvidence A) :
    AbelianCategoryClosed A := by
  exact And.intro E.compositionDefinedClosed (And.intro E.kernelsExistClosed (And.intro E.cokernelsExistClosed E.abelianAxiomsHoldClosed))

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse