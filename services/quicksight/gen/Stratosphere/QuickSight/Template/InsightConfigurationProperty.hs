module Stratosphere.QuickSight.Template.InsightConfigurationProperty (
        module Exports, InsightConfigurationProperty(..),
        mkInsightConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ComputationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomNarrativeOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data InsightConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-insightconfiguration.html>
    InsightConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-insightconfiguration.html#cfn-quicksight-template-insightconfiguration-computations>
                                  computations :: (Prelude.Maybe [ComputationProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-insightconfiguration.html#cfn-quicksight-template-insightconfiguration-customnarrative>
                                  customNarrative :: (Prelude.Maybe CustomNarrativeOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-insightconfiguration.html#cfn-quicksight-template-insightconfiguration-interactions>
                                  interactions :: (Prelude.Maybe VisualInteractionOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsightConfigurationProperty :: InsightConfigurationProperty
mkInsightConfigurationProperty
  = InsightConfigurationProperty
      {haddock_workaround_ = (), computations = Prelude.Nothing,
       customNarrative = Prelude.Nothing, interactions = Prelude.Nothing}
instance ToResourceProperties InsightConfigurationProperty where
  toResourceProperties InsightConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.InsightConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Computations" Prelude.<$> computations,
                            (JSON..=) "CustomNarrative" Prelude.<$> customNarrative,
                            (JSON..=) "Interactions" Prelude.<$> interactions])}
instance JSON.ToJSON InsightConfigurationProperty where
  toJSON InsightConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Computations" Prelude.<$> computations,
               (JSON..=) "CustomNarrative" Prelude.<$> customNarrative,
               (JSON..=) "Interactions" Prelude.<$> interactions]))
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
instance Property "Interactions" InsightConfigurationProperty where
  type PropertyType "Interactions" InsightConfigurationProperty = VisualInteractionOptionsProperty
  set newValue InsightConfigurationProperty {..}
    = InsightConfigurationProperty
        {interactions = Prelude.pure newValue, ..}