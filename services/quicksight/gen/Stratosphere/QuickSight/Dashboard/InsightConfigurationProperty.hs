module Stratosphere.QuickSight.Dashboard.InsightConfigurationProperty (
        module Exports, InsightConfigurationProperty(..),
        mkInsightConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CustomNarrativeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data InsightConfigurationProperty
  = InsightConfigurationProperty {computations :: (Prelude.Maybe [ComputationProperty]),
                                  customNarrative :: (Prelude.Maybe CustomNarrativeOptionsProperty)}
mkInsightConfigurationProperty :: InsightConfigurationProperty
mkInsightConfigurationProperty
  = InsightConfigurationProperty
      {computations = Prelude.Nothing, customNarrative = Prelude.Nothing}
instance ToResourceProperties InsightConfigurationProperty where
  toResourceProperties InsightConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.InsightConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Computations" Prelude.<$> computations,
                            (JSON..=) "CustomNarrative" Prelude.<$> customNarrative])}
instance JSON.ToJSON InsightConfigurationProperty where
  toJSON InsightConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Computations" Prelude.<$> computations,
               (JSON..=) "CustomNarrative" Prelude.<$> customNarrative]))
instance Property "Computations" InsightConfigurationProperty where
  type PropertyType "Computations" InsightConfigurationProperty = [ComputationProperty]
  set newValue InsightConfigurationProperty {..}
    = InsightConfigurationProperty
        {computations = Prelude.pure newValue, ..}
instance Property "CustomNarrative" InsightConfigurationProperty where
  type PropertyType "CustomNarrative" InsightConfigurationProperty = CustomNarrativeOptionsProperty
  set newValue InsightConfigurationProperty {..}
    = InsightConfigurationProperty
        {customNarrative = Prelude.pure newValue, ..}