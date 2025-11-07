module Stratosphere.QuickSight.Dashboard.PluginVisualPropertyProperty (
        PluginVisualPropertyProperty(..), mkPluginVisualPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PluginVisualPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualproperty.html>
    PluginVisualPropertyProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualproperty.html#cfn-quicksight-dashboard-pluginvisualproperty-name>
                                  name :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualproperty.html#cfn-quicksight-dashboard-pluginvisualproperty-value>
                                  value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualPropertyProperty :: PluginVisualPropertyProperty
mkPluginVisualPropertyProperty
  = PluginVisualPropertyProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties PluginVisualPropertyProperty where
  toResourceProperties PluginVisualPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PluginVisualProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON PluginVisualPropertyProperty where
  toJSON PluginVisualPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" PluginVisualPropertyProperty where
  type PropertyType "Name" PluginVisualPropertyProperty = Value Prelude.Text
  set newValue PluginVisualPropertyProperty {..}
    = PluginVisualPropertyProperty {name = Prelude.pure newValue, ..}
instance Property "Value" PluginVisualPropertyProperty where
  type PropertyType "Value" PluginVisualPropertyProperty = Value Prelude.Text
  set newValue PluginVisualPropertyProperty {..}
    = PluginVisualPropertyProperty {value = Prelude.pure newValue, ..}