import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure DirectProduct (I : Type) (A : I → Type) where
  carrier : Type
  projection : (i : I) → carrier → A i
  universalProperty : (B : Type) → ((i : I) → B → A i) → (B → carrier)

structure DirectProductEvidence (I : Type) (A : I → Type) (P : DirectProduct I A) where
  projectionSurjective : Prop
  universalPropertyUnique : Prop

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse