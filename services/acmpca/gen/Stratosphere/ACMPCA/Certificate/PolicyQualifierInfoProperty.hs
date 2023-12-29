module Stratosphere.ACMPCA.Certificate.PolicyQualifierInfoProperty (
        module Exports, PolicyQualifierInfoProperty(..),
        mkPolicyQualifierInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.QualifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyQualifierInfoProperty
  = PolicyQualifierInfoProperty {policyQualifierId :: (Value Prelude.Text),
                                 qualifier :: QualifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyQualifierInfoProperty ::
  Value Prelude.Text
  -> QualifierProperty -> PolicyQualifierInfoProperty
mkPolicyQualifierInfoProperty policyQualifierId qualifier
  = PolicyQualifierInfoProperty
      {policyQualifierId = policyQualifierId, qualifier = qualifier}
instance ToResourceProperties PolicyQualifierInfoProperty where
  toResourceProperties PolicyQualifierInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.PolicyQualifierInfo",
         supportsTags = Prelude.False,
         properties = ["PolicyQualifierId" JSON..= policyQualifierId,
                       "Qualifier" JSON..= qualifier]}
instance JSON.ToJSON PolicyQualifierInfoProperty where
  toJSON PolicyQualifierInfoProperty {..}
    = JSON.object
        ["PolicyQualifierId" JSON..= policyQualifierId,
         "Qualifier" JSON..= qualifier]
instance Property "PolicyQualifierId" PolicyQualifierInfoProperty where
  type PropertyType "PolicyQualifierId" PolicyQualifierInfoProperty = Value Prelude.Text
  set newValue PolicyQualifierInfoProperty {..}
    = PolicyQualifierInfoProperty {policyQualifierId = newValue, ..}
instance Property "Qualifier" PolicyQualifierInfoProperty where
  type PropertyType "Qualifier" PolicyQualifierInfoProperty = QualifierProperty
  set newValue PolicyQualifierInfoProperty {..}
    = PolicyQualifierInfoProperty {qualifier = newValue, ..}