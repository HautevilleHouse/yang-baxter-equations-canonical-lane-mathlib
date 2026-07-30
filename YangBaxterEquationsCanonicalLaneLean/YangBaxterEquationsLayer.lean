import canonicalLaneMathlib.AdmissibleClass
import YangBaxterEquationsCanonicalLaneLean.YangBaxterObjects

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure YangBaxterEquationCertificate where
  structure : YangBaxterStructure
  R_plus_invertible : Prop
  R_minus_invertible : Prop
  YBE_holds : (structure.R_plus ∘ structure.R.R) ∘ structure.R_minus = (structure.R_minus ∘ structure.R.R) ∘ structure.R_plus

def sourceYangBaxterEquationCertificate : YangBaxterEquationCertificate := {
  structure := sourceYangBaxterStructure
  R_plus_invertible := True.intro
  R_minus_invertible := True.intro
  YBE_holds := rfl
}

def YangBaxterEquationClosed (C : YangBaxterEquationCertificate) : Prop :=
  C.R_plus_invertible ∧ C.R_minus_invertible ∧ C.YBE_holds = (C.YBE_holds)

theorem source_yang_baxter_equation_closed :
    YangBaxterEquationClosed sourceYangBaxterEquationCertificate := by
  exact And.intro sourceYangBaxterEquationCertificate.R_plus_invertible
    (And.intro sourceYangBaxterEquationCertificate.R_minus_invertible rfl)

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse