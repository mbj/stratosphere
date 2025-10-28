module Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingTechniquesProperty (
        module Exports, IdMappingTechniquesProperty(..),
        mkIdMappingTechniquesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingRuleBasedPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.ProviderPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingTechniquesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingtechniques.html>
    IdMappingTechniquesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingtechniques.html#cfn-entityresolution-idmappingworkflow-idmappingtechniques-idmappingtype>
                                 idMappingType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingtechniques.html#cfn-entityresolution-idmappingworkflow-idmappingtechniques-providerproperties>
                                 providerProperties :: (Prelude.Maybe ProviderPropertiesProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingtechniques.html#cfn-entityresolution-idmappingworkflow-idmappingtechniques-rulebasedproperties>
                                 ruleBasedProperties :: (Prelude.Maybe IdMappingRuleBasedPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingTechniquesProperty :: IdMappingTechniquesProperty
mkIdMappingTechniquesProperty
  = IdMappingTechniquesProperty
      {haddock_workaround_ = (), idMappingType = Prelude.Nothing,
       providerProperties = Prelude.Nothing,
       ruleBasedProperties = Prelude.Nothing}
instance ToResourceProperties IdMappingTechniquesProperty where
  toResourceProperties IdMappingTechniquesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.IdMappingTechniques",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdMappingType" Prelude.<$> idMappingType,
                            (JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
                            (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties])}
instance JSON.ToJSON IdMappingTechniquesProperty where
  toJSON IdMappingTechniquesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdMappingType" Prelude.<$> idMappingType,
               (JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
               (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties]))
instance Property "IdMappingType" IdMappingTechniquesProperty where
  type PropertyType "IdMappingType" IdMappingTechniquesProperty = Value Prelude.Text
  set newValue IdMappingTechniquesProperty {..}
    = IdMappingTechniquesProperty
        {idMappingType = Prelude.pure newValue, ..}
instance Property "ProviderProperties" IdMappingTechniquesProperty where
  type PropertyType "ProviderProperties" IdMappingTechniquesProperty = ProviderPropertiesProperty
  set newValue IdMappingTechniquesProperty {..}
    = IdMappingTechniquesProperty
        {providerProperties = Prelude.pure newValue, ..}
instance Property "RuleBasedProperties" IdMappingTechniquesProperty where
  type PropertyType "RuleBasedProperties" IdMappingTechniquesProperty = IdMappingRuleBasedPropertiesProperty
  set newValue IdMappingTechniquesProperty {..}
    = IdMappingTechniquesProperty
        {ruleBasedProperties = Prelude.pure newValue, ..}