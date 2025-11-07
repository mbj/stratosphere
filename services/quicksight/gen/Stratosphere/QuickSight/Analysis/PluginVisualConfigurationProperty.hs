module Stratosphere.QuickSight.Analysis.PluginVisualConfigurationProperty (
        module Exports, PluginVisualConfigurationProperty(..),
        mkPluginVisualConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PluginVisualFieldWellProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PluginVisualOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PluginVisualSortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PluginVisualConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualconfiguration.html>
    PluginVisualConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualconfiguration.html#cfn-quicksight-analysis-pluginvisualconfiguration-fieldwells>
                                       fieldWells :: (Prelude.Maybe [PluginVisualFieldWellProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualconfiguration.html#cfn-quicksight-analysis-pluginvisualconfiguration-sortconfiguration>
                                       sortConfiguration :: (Prelude.Maybe PluginVisualSortConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-pluginvisualconfiguration.html#cfn-quicksight-analysis-pluginvisualconfiguration-visualoptions>
                                       visualOptions :: (Prelude.Maybe PluginVisualOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualConfigurationProperty ::
  PluginVisualConfigurationProperty
mkPluginVisualConfigurationProperty
  = PluginVisualConfigurationProperty
      {haddock_workaround_ = (), fieldWells = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing,
       visualOptions = Prelude.Nothing}
instance ToResourceProperties PluginVisualConfigurationProperty where
  toResourceProperties PluginVisualConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PluginVisualConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "VisualOptions" Prelude.<$> visualOptions])}
instance JSON.ToJSON PluginVisualConfigurationProperty where
  toJSON PluginVisualConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "VisualOptions" Prelude.<$> visualOptions]))
instance Property "FieldWells" PluginVisualConfigurationProperty where
  type PropertyType "FieldWells" PluginVisualConfigurationProperty = [PluginVisualFieldWellProperty]
  set newValue PluginVisualConfigurationProperty {..}
    = PluginVisualConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "SortConfiguration" PluginVisualConfigurationProperty where
  type PropertyType "SortConfiguration" PluginVisualConfigurationProperty = PluginVisualSortConfigurationProperty
  set newValue PluginVisualConfigurationProperty {..}
    = PluginVisualConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "VisualOptions" PluginVisualConfigurationProperty where
  type PropertyType "VisualOptions" PluginVisualConfigurationProperty = PluginVisualOptionsProperty
  set newValue PluginVisualConfigurationProperty {..}
    = PluginVisualConfigurationProperty
        {visualOptions = Prelude.pure newValue, ..}