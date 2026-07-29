import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectSumPackage where
  indexSet : Type u
  components : indexSet → Type v
  directSum : Type w
  directSumDefined : Prop
  directSumProjection : (i : indexSet) → directSum → components i
  directSumInclusion : (i : indexSet) → components i → directSum
  finiteSupport : Prop

structure DirectSumEvidence (D : DirectSumPackage) where
  directSumDefinedClosed : D.directSumDefined
  finiteSupportClosed : D.finiteSupport

structure DirectProductPackage where
  indexSet : Type u
  components : indexSet → Type v
  directProduct : Type w
  directProductDefined : Prop
  directProductProjection : (i : indexSet) → directProduct → components i
  universalProperty : Prop

structure DirectProductEvidence (P : DirectProductPackage) where
  directProductDefinedClosed : P.directProductDefined
  universalPropertyClosed : P.universalProperty

structure AbelianStructurePackage where
  group : Type u
  abelianAdd : AddCommGroup group
  abelianDefined : Prop

structure AbelianStructureEvidence (A : AbelianStructurePackage) where
  abelianDefinedClosed : A.abelianDefined

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse