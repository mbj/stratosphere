module Stratosphere.QuickSight.Analysis.PluginVisualOptionsProperty (
        module Exports, PluginVisualOptionsProperty(..),
        mkPluginVisualOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PluginVisualPropertyProperty as Exports
import Stratosphere.ResourceProperties
data PluginVisualOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualoptions.html>
    PluginVisualOptionsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualoptions.html#cfn-quicksight-analysis-pluginvisualoptions-visualproperties>
                                 visualProperties :: (Prelude.Maybe [PluginVisualPropertyProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualOptionsProperty :: PluginVisualOptionsProperty
mkPluginVisualOptionsProperty
  = PluginVisualOptionsProperty
      {haddock_workaround_ = (), visualProperties = Prelude.Nothing}
instance ToResourceProperties PluginVisualOptionsProperty where
  toResourceProperties PluginVisualOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PluginVisualOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VisualProperties" Prelude.<$> visualProperties])}
instance JSON.ToJSON PluginVisualOptionsProperty where
  toJSON PluginVisualOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VisualProperties" Prelude.<$> visualProperties]))
instance Property "VisualProperties" PluginVisualOptionsProperty where
  type PropertyType "VisualProperties" PluginVisualOptionsProperty = [PluginVisualPropertyProperty]
  set newValue PluginVisualOptionsProperty {..}
    = PluginVisualOptionsProperty
        {visualProperties = Prelude.pure newValue, ..}