import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.DirectSumPackage
import HautevilleHouse.DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean.DirectProductPackage

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean

structure UniversalPropertyPackage where
  directSum : DirectSumPackage
  directProduct : DirectProductPackage
  coproductUniversal : Prop
  productUniversal : Prop
  universalPropertyClosed : Prop

structure UniversalPropertyEvidence (U : UniversalPropertyPackage) where
  coproductUniversalClosed : U.coproductUniversal
  productUniversalClosed : U.productUniversal
  universalPropertyClosedTerm : U.universalPropertyClosed

def UniversalPropertyClosed (U : UniversalPropertyPackage) : Prop :=
  U.coproductUniversal ∧ U.productUniversal ∧ U.universalPropertyClosed

theorem universal_property_closed_from_evidence (U : UniversalPropertyPackage) (E : UniversalPropertyEvidence U) :
    UniversalPropertyClosed U := by
  exact And.intro E.coproductUniversalClosed (And.intro E.productUniversalClosed E.universalPropertyClosedTerm)

end DirectSumsDirectProductsAbelianTheoremCanonicalLaneLean
end HautevilleHouse