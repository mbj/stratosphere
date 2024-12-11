module Stratosphere.SecurityHub.PolicyAssociation (
        PolicyAssociation(..), mkPolicyAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyAssociation
  = PolicyAssociation {configurationPolicyId :: (Value Prelude.Text),
                       targetId :: (Value Prelude.Text),
                       targetType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PolicyAssociation
mkPolicyAssociation configurationPolicyId targetId targetType
  = PolicyAssociation
      {configurationPolicyId = configurationPolicyId,
       targetId = targetId, targetType = targetType}
instance ToResourceProperties PolicyAssociation where
  toResourceProperties PolicyAssociation {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::PolicyAssociation",
         supportsTags = Prelude.False,
         properties = ["ConfigurationPolicyId"
                         JSON..= configurationPolicyId,
                       "TargetId" JSON..= targetId, "TargetType" JSON..= targetType]}
instance JSON.ToJSON PolicyAssociation where
  toJSON PolicyAssociation {..}
    = JSON.object
        ["ConfigurationPolicyId" JSON..= configurationPolicyId,
         "TargetId" JSON..= targetId, "TargetType" JSON..= targetType]
instance Property "ConfigurationPolicyId" PolicyAssociation where
  type PropertyType "ConfigurationPolicyId" PolicyAssociation = Value Prelude.Text
  set newValue PolicyAssociation {..}
    = PolicyAssociation {configurationPolicyId = newValue, ..}
instance Property "TargetId" PolicyAssociation where
  type PropertyType "TargetId" PolicyAssociation = Value Prelude.Text
  set newValue PolicyAssociation {..}
    = PolicyAssociation {targetId = newValue, ..}
instance Property "TargetType" PolicyAssociation where
  type PropertyType "TargetType" PolicyAssociation = Value Prelude.Text
  set newValue PolicyAssociation {..}
    = PolicyAssociation {targetType = newValue, ..}