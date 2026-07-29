import canonicalLaneMathlib.AdmissibleClass
import DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse