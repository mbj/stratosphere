module Stratosphere.QuickSight.Analysis.PluginVisualFieldWellProperty (
        module Exports, PluginVisualFieldWellProperty(..),
        mkPluginVisualFieldWellProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.UnaggregatedFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PluginVisualFieldWellProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualfieldwell.html>
    PluginVisualFieldWellProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualfieldwell.html#cfn-quicksight-analysis-pluginvisualfieldwell-axisname>
                                   axisName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualfieldwell.html#cfn-quicksight-analysis-pluginvisualfieldwell-dimensions>
                                   dimensions :: (Prelude.Maybe [DimensionFieldProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualfieldwell.html#cfn-quicksight-analysis-pluginvisualfieldwell-measures>
                                   measures :: (Prelude.Maybe [MeasureFieldProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualfieldwell.html#cfn-quicksight-analysis-pluginvisualfieldwell-unaggregated>
                                   unaggregated :: (Prelude.Maybe [UnaggregatedFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualFieldWellProperty :: PluginVisualFieldWellProperty
mkPluginVisualFieldWellProperty
  = PluginVisualFieldWellProperty
      {haddock_workaround_ = (), axisName = Prelude.Nothing,
       dimensions = Prelude.Nothing, measures = Prelude.Nothing,
       unaggregated = Prelude.Nothing}
instance ToResourceProperties PluginVisualFieldWellProperty where
  toResourceProperties PluginVisualFieldWellProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PluginVisualFieldWell",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisName" Prelude.<$> axisName,
                            (JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "Measures" Prelude.<$> measures,
                            (JSON..=) "Unaggregated" Prelude.<$> unaggregated])}
instance JSON.ToJSON PluginVisualFieldWellProperty where
  toJSON PluginVisualFieldWellProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisName" Prelude.<$> axisName,
               (JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "Measures" Prelude.<$> measures,
               (JSON..=) "Unaggregated" Prelude.<$> unaggregated]))
instance Property "AxisName" PluginVisualFieldWellProperty where
  type PropertyType "AxisName" PluginVisualFieldWellProperty = Value Prelude.Text
  set newValue PluginVisualFieldWellProperty {..}
    = PluginVisualFieldWellProperty
        {axisName = Prelude.pure newValue, ..}
instance Property "Dimensions" PluginVisualFieldWellProperty where
  type PropertyType "Dimensions" PluginVisualFieldWellProperty = [DimensionFieldProperty]
  set newValue PluginVisualFieldWellProperty {..}
    = PluginVisualFieldWellProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "Measures" PluginVisualFieldWellProperty where
  type PropertyType "Measures" PluginVisualFieldWellProperty = [MeasureFieldProperty]
  set newValue PluginVisualFieldWellProperty {..}
    = PluginVisualFieldWellProperty
        {measures = Prelude.pure newValue, ..}
instance Property "Unaggregated" PluginVisualFieldWellProperty where
  type PropertyType "Unaggregated" PluginVisualFieldWellProperty = [UnaggregatedFieldProperty]
  set newValue PluginVisualFieldWellProperty {..}
    = PluginVisualFieldWellProperty
        {unaggregated = Prelude.pure newValue, ..}