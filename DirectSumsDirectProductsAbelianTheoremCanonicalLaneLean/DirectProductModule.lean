import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectProductPackage (I : Type) (A : I -> Type) where
  carrier : Type
  addition : carrier -> carrier -> carrier
  zero : carrier
  negative : carrier -> carrier
  canonicalProjections : (i : I) -> carrier -> A i
  productUniversal : Prop

structure DirectProductEvidence {I : Type} {A : I -> Type} (P : DirectProductPackage I A) where
  productUniversalClosed : P.productUniversal

def DirectProductClosed {I : Type} {A : I -> Type} (P : DirectProductPackage I A) : Prop :=
  P.productUniversal

theorem direct_product_closed_from_evidence {I : Type} {A : I -> Type} (P : DirectProductPackage I A) (E : DirectProductEvidence P) : DirectProductClosed P := by
  exact E.productUniversalClosed

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse