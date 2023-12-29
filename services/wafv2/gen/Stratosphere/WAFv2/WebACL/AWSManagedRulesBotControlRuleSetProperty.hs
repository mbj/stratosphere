module Stratosphere.WAFv2.WebACL.AWSManagedRulesBotControlRuleSetProperty (
        AWSManagedRulesBotControlRuleSetProperty(..),
        mkAWSManagedRulesBotControlRuleSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSManagedRulesBotControlRuleSetProperty
  = AWSManagedRulesBotControlRuleSetProperty {inspectionLevel :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSManagedRulesBotControlRuleSetProperty ::
  Value Prelude.Text -> AWSManagedRulesBotControlRuleSetProperty
mkAWSManagedRulesBotControlRuleSetProperty inspectionLevel
  = AWSManagedRulesBotControlRuleSetProperty
      {inspectionLevel = inspectionLevel}
instance ToResourceProperties AWSManagedRulesBotControlRuleSetProperty where
  toResourceProperties AWSManagedRulesBotControlRuleSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AWSManagedRulesBotControlRuleSet",
         supportsTags = Prelude.False,
         properties = ["InspectionLevel" JSON..= inspectionLevel]}
instance JSON.ToJSON AWSManagedRulesBotControlRuleSetProperty where
  toJSON AWSManagedRulesBotControlRuleSetProperty {..}
    = JSON.object ["InspectionLevel" JSON..= inspectionLevel]
instance Property "InspectionLevel" AWSManagedRulesBotControlRuleSetProperty where
  type PropertyType "InspectionLevel" AWSManagedRulesBotControlRuleSetProperty = Value Prelude.Text
  set newValue AWSManagedRulesBotControlRuleSetProperty {}
    = AWSManagedRulesBotControlRuleSetProperty
        {inspectionLevel = newValue, ..}