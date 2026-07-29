import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure BiproductPackage (I : Type) (A : I -> Type) where
  directSum : DirectSumPackage I A
  directProduct : DirectProductPackage I A
  biproductUniversal : Prop
  biproductComparison : Prop

structure BiproductEvidence {I : Type} {A : I -> Type} (B : BiproductPackage I A) where
  biproductUniversalClosed : B.biproductUniversal
  biproductComparisonClosed : B.biproductComparison

def BiproductClosed {I : Type} {A : I -> Type} (B : BiproductPackage I A) : Prop :=
  B.biproductUniversal ∧ B.biproductComparison

theorem biproduct_closed_from_evidence {I : Type} {A : I -> Type} (B : BiproductPackage I A) (E : BiproductEvidence B) : BiproductClosed B := by
  exact And.intro E.biproductUniversalClosed E.biproductComparisonClosed

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse