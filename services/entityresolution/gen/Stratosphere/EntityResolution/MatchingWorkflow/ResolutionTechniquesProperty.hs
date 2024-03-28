module Stratosphere.EntityResolution.MatchingWorkflow.ResolutionTechniquesProperty (
        module Exports, ResolutionTechniquesProperty(..),
        mkResolutionTechniquesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.ProviderPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.RuleBasedPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResolutionTechniquesProperty
  = ResolutionTechniquesProperty {providerProperties :: (Prelude.Maybe ProviderPropertiesProperty),
                                  resolutionType :: (Prelude.Maybe (Value Prelude.Text)),
                                  ruleBasedProperties :: (Prelude.Maybe RuleBasedPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolutionTechniquesProperty :: ResolutionTechniquesProperty
mkResolutionTechniquesProperty
  = ResolutionTechniquesProperty
      {providerProperties = Prelude.Nothing,
       resolutionType = Prelude.Nothing,
       ruleBasedProperties = Prelude.Nothing}
instance ToResourceProperties ResolutionTechniquesProperty where
  toResourceProperties ResolutionTechniquesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.ResolutionTechniques",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
                            (JSON..=) "ResolutionType" Prelude.<$> resolutionType,
                            (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties])}
instance JSON.ToJSON ResolutionTechniquesProperty where
  toJSON ResolutionTechniquesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
               (JSON..=) "ResolutionType" Prelude.<$> resolutionType,
               (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties]))
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