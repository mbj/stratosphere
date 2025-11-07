module Stratosphere.QuickSight.Dashboard.PluginVisualItemsLimitConfigurationProperty (
        PluginVisualItemsLimitConfigurationProperty(..),
        mkPluginVisualItemsLimitConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PluginVisualItemsLimitConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualitemslimitconfiguration.html>
    PluginVisualItemsLimitConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualitemslimitconfiguration.html#cfn-quicksight-dashboard-pluginvisualitemslimitconfiguration-itemslimit>
                                                 itemsLimit :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualItemsLimitConfigurationProperty ::
  PluginVisualItemsLimitConfigurationProperty
mkPluginVisualItemsLimitConfigurationProperty
  = PluginVisualItemsLimitConfigurationProperty
      {haddock_workaround_ = (), itemsLimit = Prelude.Nothing}
instance ToResourceProperties PluginVisualItemsLimitConfigurationProperty where
  toResourceProperties
    PluginVisualItemsLimitConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PluginVisualItemsLimitConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ItemsLimit" Prelude.<$> itemsLimit])}
instance JSON.ToJSON PluginVisualItemsLimitConfigurationProperty where
  toJSON PluginVisualItemsLimitConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ItemsLimit" Prelude.<$> itemsLimit]))
instance Property "ItemsLimit" PluginVisualItemsLimitConfigurationProperty where
  type PropertyType "ItemsLimit" PluginVisualItemsLimitConfigurationProperty = Value Prelude.Double
  set newValue PluginVisualItemsLimitConfigurationProperty {..}
    = PluginVisualItemsLimitConfigurationProperty
        {itemsLimit = Prelude.pure newValue, ..}