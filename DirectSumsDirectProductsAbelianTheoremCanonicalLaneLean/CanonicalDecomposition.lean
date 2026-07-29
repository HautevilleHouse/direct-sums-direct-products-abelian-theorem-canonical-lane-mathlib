import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure CanonicalDecompositionPackage where
  directSumEmbedding : Prop
  directProductProjection : Prop
  decompositionExists : Prop
  decompositionNatural : Prop

structure CanonicalDecompositionEvidence (D : CanonicalDecompositionPackage) where
  directSumEmbeddingClosed : D.directSumEmbedding
  directProductProjectionClosed : D.directProductProjection
  decompositionExistsClosed : D.decompositionExists
  decompositionNaturalClosed : D.decompositionNatural

def CanonicalDecompositionClosed (D : CanonicalDecompositionPackage) : Prop :=
  D.directSumEmbedding ∧ D.directProductProjection ∧ D.decompositionExists ∧ D.decompositionNatural

theorem canonical_decomposition_closed_from_evidence (D : CanonicalDecompositionPackage) (E : CanonicalDecompositionEvidence D) : CanonicalDecompositionClosed D := by
  exact And.intro E.directSumEmbeddingClosed (And.intro E.directProductProjectionClosed (And.intro E.decompositionExistsClosed E.decompositionNaturalClosed))

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse