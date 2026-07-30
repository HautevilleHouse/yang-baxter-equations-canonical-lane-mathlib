import HautevilleHouse.YangBaxterEquationsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse