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
  = RulesConfigurationTypeProperty {rules :: [MappingRuleProperty]}
mkRulesConfigurationTypeProperty ::
  [MappingRuleProperty] -> RulesConfigurationTypeProperty
mkRulesConfigurationTypeProperty rules
  = RulesConfigurationTypeProperty {rules = rules}
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
  set newValue RulesConfigurationTypeProperty {}
    = RulesConfigurationTypeProperty {rules = newValue, ..}