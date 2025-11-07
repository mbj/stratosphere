module Stratosphere.QuickSight.Dashboard.PluginVisualSortConfigurationProperty (
        module Exports, PluginVisualSortConfigurationProperty(..),
        mkPluginVisualSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PluginVisualTableQuerySortProperty as Exports
import Stratosphere.ResourceProperties
data PluginVisualSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualsortconfiguration.html>
    PluginVisualSortConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-pluginvisualsortconfiguration.html#cfn-quicksight-dashboard-pluginvisualsortconfiguration-pluginvisualtablequerysort>
                                           pluginVisualTableQuerySort :: (Prelude.Maybe PluginVisualTableQuerySortProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualSortConfigurationProperty ::
  PluginVisualSortConfigurationProperty
mkPluginVisualSortConfigurationProperty
  = PluginVisualSortConfigurationProperty
      {haddock_workaround_ = (),
       pluginVisualTableQuerySort = Prelude.Nothing}
instance ToResourceProperties PluginVisualSortConfigurationProperty where
  toResourceProperties PluginVisualSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PluginVisualSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PluginVisualTableQuerySort"
                              Prelude.<$> pluginVisualTableQuerySort])}
instance JSON.ToJSON PluginVisualSortConfigurationProperty where
  toJSON PluginVisualSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PluginVisualTableQuerySort"
                 Prelude.<$> pluginVisualTableQuerySort]))
instance Property "PluginVisualTableQuerySort" PluginVisualSortConfigurationProperty where
  type PropertyType "PluginVisualTableQuerySort" PluginVisualSortConfigurationProperty = PluginVisualTableQuerySortProperty
  set newValue PluginVisualSortConfigurationProperty {..}
    = PluginVisualSortConfigurationProperty
        {pluginVisualTableQuerySort = Prelude.pure newValue, ..}