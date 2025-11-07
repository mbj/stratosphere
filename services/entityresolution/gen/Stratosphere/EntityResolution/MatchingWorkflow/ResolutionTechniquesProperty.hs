module Stratosphere.EntityResolution.MatchingWorkflow.ResolutionTechniquesProperty (
        module Exports, ResolutionTechniquesProperty(..),
        mkResolutionTechniquesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.ProviderPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.RuleBasedPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.RuleConditionPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResolutionTechniquesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-resolutiontechniques.html>
    ResolutionTechniquesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-resolutiontechniques.html#cfn-entityresolution-matchingworkflow-resolutiontechniques-providerproperties>
                                  providerProperties :: (Prelude.Maybe ProviderPropertiesProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-resolutiontechniques.html#cfn-entityresolution-matchingworkflow-resolutiontechniques-resolutiontype>
                                  resolutionType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-resolutiontechniques.html#cfn-entityresolution-matchingworkflow-resolutiontechniques-rulebasedproperties>
                                  ruleBasedProperties :: (Prelude.Maybe RuleBasedPropertiesProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-resolutiontechniques.html#cfn-entityresolution-matchingworkflow-resolutiontechniques-ruleconditionproperties>
                                  ruleConditionProperties :: (Prelude.Maybe RuleConditionPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolutionTechniquesProperty :: ResolutionTechniquesProperty
mkResolutionTechniquesProperty
  = ResolutionTechniquesProperty
      {haddock_workaround_ = (), providerProperties = Prelude.Nothing,
       resolutionType = Prelude.Nothing,
       ruleBasedProperties = Prelude.Nothing,
       ruleConditionProperties = Prelude.Nothing}
instance ToResourceProperties ResolutionTechniquesProperty where
  toResourceProperties ResolutionTechniquesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.ResolutionTechniques",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
                            (JSON..=) "ResolutionType" Prelude.<$> resolutionType,
                            (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties,
                            (JSON..=) "RuleConditionProperties"
                              Prelude.<$> ruleConditionProperties])}
instance JSON.ToJSON ResolutionTechniquesProperty where
  toJSON ResolutionTechniquesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
               (JSON..=) "ResolutionType" Prelude.<$> resolutionType,
               (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties,
               (JSON..=) "RuleConditionProperties"
                 Prelude.<$> ruleConditionProperties]))
instance Property "ProviderProperties" ResolutionTechniquesProperty where
  type PropertyType "ProviderProperties" ResolutionTechniquesProperty = ProviderPropertiesProperty
  set newValue ResolutionTechniquesProperty {..}
    = ResolutionTechniquesProperty
        {providerProperties = Prelude.pure newValue, ..}
instance Property "ResolutionType" ResolutionTechniquesProperty where
  type PropertyType "ResolutionType" ResolutionTechniquesProperty = Value Prelude.Text
  set newValue ResolutionTechniquesProperty {..}
    = ResolutionTechniquesProperty
        {resolutionType = Prelude.pure newValue, ..}
instance Property "RuleBasedProperties" ResolutionTechniquesProperty where
  type PropertyType "RuleBasedProperties" ResolutionTechniquesProperty = RuleBasedPropertiesProperty
  set newValue ResolutionTechniquesProperty {..}
    = ResolutionTechniquesProperty
        {ruleBasedProperties = Prelude.pure newValue, ..}
instance Property "RuleConditionProperties" ResolutionTechniquesProperty where
  type PropertyType "RuleConditionProperties" ResolutionTechniquesProperty = RuleConditionPropertiesProperty
  set newValue ResolutionTechniquesProperty {..}
    = ResolutionTechniquesProperty
        {ruleConditionProperties = Prelude.pure newValue, ..}