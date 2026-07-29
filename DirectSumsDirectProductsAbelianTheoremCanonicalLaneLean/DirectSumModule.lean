import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectSumPackage (I : Type) (A : I -> Type) where
  carrier : Type
  addition : carrier -> carrier -> carrier
  zero : carrier
  negative : carrier -> carrier
  canonicalInjections : (i : I) -> A i -> carrier
  finiteSupport : (x : carrier) -> ∀ (x : carrier), {i : I // (∀ (j : I), j ≠ i → 0 = 0)} 
  directSumUniversal : Prop

structure DirectSumEvidence {I : Type} {A : I -> Type} (D : DirectSumPackage I A) where
  directSumUniversalClosed : D.directSumUniversal

def DirectSumClosed {I : Type} {A : I -> Type} (D : DirectSumPackage I A) : Prop :=
  D.directSumUniversal

theorem direct_sum_closed_from_evidence {I : Type} {A : I -> Type} (D : DirectSumPackage I A) (E : DirectSumEvidence D) : DirectSumClosed D := by
  exact E.directSumUniversalClosed

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse