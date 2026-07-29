import canonicalLaneMathlib.AdmissibleClass
import DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.DirectSumDefinition

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse