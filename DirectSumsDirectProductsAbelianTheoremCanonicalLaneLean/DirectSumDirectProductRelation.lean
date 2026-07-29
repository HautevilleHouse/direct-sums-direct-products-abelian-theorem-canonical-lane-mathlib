import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.UniversalPropertyPackage

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectSumDirectProductRelation where
  universalProperty : UniversalPropertyPackage
  finiteIndexImplication : Prop
  canonicalMap : Type u
  canonicalMapDefined : Prop
  relationClosed : Prop

structure DirectSumDirectProductRelationEvidence (R : DirectSumDirectProductRelation) where
  finiteIndexImplicationClosed : R.finiteIndexImplication
  canonicalMapDefinedClosed : R.canonicalMapDefined
  relationClosedTerm : R.relationClosed

def DirectSumDirectProductRelationClosed (R : DirectSumDirectProductRelation) : Prop :=
  R.finiteIndexImplication ∧ R.canonicalMapDefined ∧ R.relationClosed

theorem direct_sum_direct_product_relation_closed_from_evidence
    (R : DirectSumDirectProductRelation) (E : DirectSumDirectProductRelationEvidence R) :
    DirectSumDirectProductRelationClosed R := by
  exact And.intro E.finiteIndexImplicationClosed (And.intro E.canonicalMapDefinedClosed E.relationClosedTerm)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse