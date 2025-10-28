module Stratosphere.Cognito.IdentityPoolRoleAttachment.MappingRuleProperty (
        MappingRuleProperty(..), mkMappingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MappingRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html>
    MappingRuleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-claim>
                         claim :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-matchtype>
                         matchType :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-rolearn>
                         roleARN :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-value>
                         value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMappingRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> MappingRuleProperty
mkMappingRuleProperty claim matchType roleARN value
  = MappingRuleProperty
      {haddock_workaround_ = (), claim = claim, matchType = matchType,
       roleARN = roleARN, value = value}
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