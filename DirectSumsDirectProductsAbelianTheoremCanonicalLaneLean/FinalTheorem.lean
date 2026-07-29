import canonicalLaneMathlib.AdmissibleClass
import DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

def ConstrainedDirectSumProductAbelianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_direct_sum_product_abelian_endgame (A : AdmissibleClass) :
    ConstrainedDirectSumProductAbelianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse