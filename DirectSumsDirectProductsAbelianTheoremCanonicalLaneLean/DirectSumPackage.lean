import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectSumPackage where
  indexSet : Type u
  componentFamily : indexSet → Type v
  directSumCarrier : Type w
  finiteSupportCondition : Prop
  additionDefined : Prop
  directSumIsAbelianGroup : Prop

structure DirectSumEvidence (D : DirectSumPackage) where
  finiteSupportConditionClosed : D.finiteSupportCondition
  additionDefinedClosed : D.additionDefined
  directSumIsAbelianGroupClosed : D.directSumIsAbelianGroup

def DirectSumClosed (D : DirectSumPackage) : Prop :=
  D.finiteSupportCondition ∧ D.additionDefined ∧ D.directSumIsAbelianGroup

theorem direct_sum_closed_from_evidence (D : DirectSumPackage) (E : DirectSumEvidence D) :
    DirectSumClosed D := by
  exact And.intro E.finiteSupportConditionClosed (And.intro E.additionDefinedClosed E.directSumIsAbelianGroupClosed)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse