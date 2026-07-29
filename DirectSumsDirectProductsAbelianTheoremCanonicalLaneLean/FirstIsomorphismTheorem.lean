import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure FirstIsomorphismTheorem (A B : Type) [AddCommGroup A] [AddCommGroup B] (f : A → B) [AddMonoidHom f] where
  kernel : AddSubgroup A
  image : AddSubgroup B
  isomorphism : A ⧸ kernel ≃+ image

structure FirstIsomorphismEvidence (A B : Type) [AddCommGroup A] [AddCommGroup B] (f : A → B) [AddMonoidHom f] (T : FirstIsomorphismTheorem A B f) where
  kernelClosed : T.kernel = ker f
  imageClosed : T.image = range f
  isomorphismClosed : T.isomorphism = (quotientAddSubgroupOf A (ker f) ≃+ range f)

def FirstIsomorphismClosed (A B : Type) [AddCommGroup A] [AddCommGroup B] (f : A → B) [AddMonoidHom f] (T : FirstIsomorphismTheorem A B f) : Prop :=
  T.kernel = ker f ∧ T.image = range f ∧ T.isomorphism = (quotientAddSubgroupOf A (ker f) ≃+ range f)

theorem first_isomorphism_closed_from_evidence (A B : Type) [AddCommGroup A] [AddCommGroup B] (f : A → B) [AddMonoidHom f] (T : FirstIsomorphismTheorem A B f) (E : FirstIsomorphismEvidence A B f T) : FirstIsomorphismClosed A B f T := by
  exact And.intro E.kernelClosed (And.intro E.imageClosed E.isomorphismClosed)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse