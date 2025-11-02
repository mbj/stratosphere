module Stratosphere.Cognito.IdentityPoolRoleAttachment.RulesConfigurationTypeProperty (
        module Exports, RulesConfigurationTypeProperty(..),
        mkRulesConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.IdentityPoolRoleAttachment.MappingRuleProperty as Exports
import Stratosphere.ResourceProperties
data RulesConfigurationTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html>
    RulesConfigurationTypeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html#cfn-cognito-identitypoolroleattachment-rulesconfigurationtype-rules>
                                    rules :: [MappingRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRulesConfigurationTypeProperty ::
  [MappingRuleProperty] -> RulesConfigurationTypeProperty
mkRulesConfigurationTypeProperty rules
  = RulesConfigurationTypeProperty
      {haddock_workaround_ = (), rules = rules}
instance ToResourceProperties RulesConfigurationTypeProperty where
  toResourceProperties RulesConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPoolRoleAttachment.RulesConfigurationType",
         supportsTags = Prelude.False, properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON RulesConfigurationTypeProperty where
  toJSON RulesConfigurationTypeProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" RulesConfigurationTypeProperty where
  type PropertyType "Rules" RulesConfigurationTypeProperty = [MappingRuleProperty]
  set newValue RulesConfigurationTypeProperty {..}
    = RulesConfigurationTypeProperty {rules = newValue, ..}