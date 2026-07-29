import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.DirectSumPackage
import HautevilleHouse.DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.DirectProductPackage

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure CanonicalInjectionProjectionPackage {D : DirectSumPackage} {P : DirectProductPackage} where
  canonicalInjections : D.indexSet → (D.componentFamily → D.directSumCarrier)
  canonicalProjections : P.indexSet → (P.directProductCarrier → P.componentFamily)
  injectionWellDefined : Prop
  projectionWellDefined : Prop
  sumProductAdjunction : Prop

structure CanonicalInjectionProjectionEvidence {D : DirectSumPackage} {P : DirectProductPackage}
    (C : CanonicalInjectionProjectionPackage D P) where
  injectionWellDefinedClosed : C.injectionWellDefined
  projectionWellDefinedClosed : C.projectionWellDefined
  sumProductAdjunctionClosed : C.sumProductAdjunction

def CanonicalInjectionProjectionClosed {D : DirectSumPackage} {P : DirectProductPackage}
    (C : CanonicalInjectionProjectionPackage D P) : Prop :=
  C.injectionWellDefined ∧ C.projectionWellDefined ∧ C.sumProductAdjunction

theorem canonical_injection_projection_closed_from_evidence
    {D : DirectSumPackage} {P : DirectProductPackage}
    (C : CanonicalInjectionProjectionPackage D P)
    (E : CanonicalInjectionProjectionEvidence C) : CanonicalInjectionProjectionClosed C := by
  exact And.intro E.injectionWellDefinedClosed (And.intro E.projectionWellDefinedClosed E.sumProductAdjunctionClosed)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse