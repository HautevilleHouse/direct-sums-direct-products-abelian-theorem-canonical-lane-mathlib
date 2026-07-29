import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectProductPackage where
  indexSet : Type u
  componentFamily : indexSet → Type v
  directProductCarrier : Type w
  productTopology : Prop
  coordinateProjections : Prop
  directProductIsAbelianGroup : Prop

structure DirectProductEvidence (P : DirectProductPackage) where
  productTopologyClosed : P.productTopology
  coordinateProjectionsClosed : P.coordinateProjections
  directProductIsAbelianGroupClosed : P.directProductIsAbelianGroup

def DirectProductClosed (P : DirectProductPackage) : Prop :=
  P.productTopology ∧ P.coordinateProjections ∧ P.directProductIsAbelianGroup

theorem direct_product_closed_from_evidence (P : DirectProductPackage) (E : DirectProductEvidence P) :
    DirectProductClosed P := by
  exact And.intro E.productTopologyClosed (And.intro E.coordinateProjectionsClosed E.directProductIsAbelianGroupClosed)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse