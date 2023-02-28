module Stratosphere.Cognito.IdentityPoolRoleAttachment.MappingRuleProperty (
        MappingRuleProperty(..), mkMappingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MappingRuleProperty
  = MappingRuleProperty {claim :: (Value Prelude.Text),
                         matchType :: (Value Prelude.Text),
                         roleARN :: (Value Prelude.Text),
                         value :: (Value Prelude.Text)}
mkMappingRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> MappingRuleProperty
mkMappingRuleProperty claim matchType roleARN value
  = MappingRuleProperty
      {claim = claim, matchType = matchType, roleARN = roleARN,
       value = value}
instance ToResourceProperties MappingRuleProperty where
  toResourceProperties MappingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPoolRoleAttachment.MappingRule",
         supportsTags = Prelude.False,
         properties = ["Claim" JSON..= claim, "MatchType" JSON..= matchType,
                       "RoleARN" JSON..= roleARN, "Value" JSON..= value]}
instance JSON.ToJSON MappingRuleProperty where
  toJSON MappingRuleProperty {..}
    = JSON.object
        ["Claim" JSON..= claim, "MatchType" JSON..= matchType,
         "RoleARN" JSON..= roleARN, "Value" JSON..= value]
instance Property "Claim" MappingRuleProperty where
  type PropertyType "Claim" MappingRuleProperty = Value Prelude.Text
  set newValue MappingRuleProperty {..}
    = MappingRuleProperty {claim = newValue, ..}
instance Property "MatchType" MappingRuleProperty where
  type PropertyType "MatchType" MappingRuleProperty = Value Prelude.Text
  set newValue MappingRuleProperty {..}
    = MappingRuleProperty {matchType = newValue, ..}
instance Property "RoleARN" MappingRuleProperty where
  type PropertyType "RoleARN" MappingRuleProperty = Value Prelude.Text
  set newValue MappingRuleProperty {..}
    = MappingRuleProperty {roleARN = newValue, ..}
instance Property "Value" MappingRuleProperty where
  type PropertyType "Value" MappingRuleProperty = Value Prelude.Text
  set newValue MappingRuleProperty {..}
    = MappingRuleProperty {value = newValue, ..}