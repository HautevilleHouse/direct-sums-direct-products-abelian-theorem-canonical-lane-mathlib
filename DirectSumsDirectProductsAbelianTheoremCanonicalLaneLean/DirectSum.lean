import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectSum (I : Type) (A : I → Type) where
  carrier : Type
  injection : (i : I) → A i → carrier
  universalProperty : (B : Type) → ((i : I) → A i → B) → (carrier → B)

structure DirectSumEvidence (I : Type) (A : I → Type) (D : DirectSum I A) where
  injectionInjective : Prop
  universalPropertyUnique : Prop

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse