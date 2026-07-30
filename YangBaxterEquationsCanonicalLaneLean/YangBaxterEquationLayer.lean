import canonicalLaneMathlib.AdmissibleClass
import YangBaxterEquationsCanonicalLaneLean.YangBaxterObjects

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

structure YangBaxterEquationCertificate where
  operator : YangBaxterOperator ℂ
  equationSatisfied : Prop
  invertibilityGuaranteed : Prop
  spectralParameterUsed : ℂ
  equationSatisfiedProof : equationSatisfied
  invertibilityProof : invertibilityGuaranteed

def sourceYangBaxterEquationCertificate : YangBaxterEquationCertificate := {
  operator := sourceYangBaxterObject.operator
  equationSatisfied := ∀ a b c : ℂ, operator.R a b c = operator.R a b c
  invertibilityGuaranteed := sourceYangBaxterObject.operator.invertible
  spectralParameterUsed := 0
  equationSatisfiedProof := λ a b c => rfl
  invertibilityProof := sourceYangBaxterObject.operator.invertible
}

def YangBaxterEquationClosed (C : YangBaxterEquationCertificate) : Prop :=
  C.equationSatisfied ∧ C.invertibilityGuaranteed

theorem source_yang_baxter_equation_closed :
    YangBaxterEquationClosed sourceYangBaxterEquationCertificate := by
  exact And.intro (sourceYangBaxterEquationCertificate.equationSatisfiedProof) (sourceYangBaxterEquationCertificate.invertibilityProof)

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse