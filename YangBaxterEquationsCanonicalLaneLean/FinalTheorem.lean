import canonicalLaneMathlib.AdmissibleClass
import YangBaxterEquationsCanonicalLaneLean.BraidGroupClosure

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

def ConstrainedYangBaxterClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_yang_baxter_endgame (A : AdmissibleClass) :
    ConstrainedYangBaxterClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse