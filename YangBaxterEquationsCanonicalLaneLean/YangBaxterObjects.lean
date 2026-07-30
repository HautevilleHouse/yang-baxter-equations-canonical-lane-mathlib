import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace YangBaxterEquationsCanonicalLaneLean

abbrev VectorSpace := ℕ → ℝ
abbrev LinearOperator := VectorSpace → VectorSpace

structure RMatrix where
  R : LinearOperator
  id : LinearOperator
  invertible : Prop

def identityOperator : LinearOperator := fun v => v

def sourceRMatrix : RMatrix := {
  R := identityOperator
  id := identityOperator
  invertible := True.intro
}

structure YangBaxterStructure where
  V : VectorSpace
  R : RMatrix
  R_plus : LinearOperator
  R_minus : LinearOperator

def sourceYangBaxterStructure : YangBaxterStructure := {
  V := fun _ => 0
  R := sourceRMatrix
  R_plus := identityOperator
  R_minus := identityOperator
}

end YangBaxterEquationsCanonicalLaneLean
end HautevilleHouse