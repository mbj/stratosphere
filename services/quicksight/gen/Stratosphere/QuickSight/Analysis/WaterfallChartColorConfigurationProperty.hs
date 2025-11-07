module Stratosphere.QuickSight.Analysis.WaterfallChartColorConfigurationProperty (
        module Exports, WaterfallChartColorConfigurationProperty(..),
        mkWaterfallChartColorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.WaterfallChartGroupColorConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartColorConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-waterfallchartcolorconfiguration.html>
    WaterfallChartColorConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-waterfallchartcolorconfiguration.html#cfn-quicksight-analysis-waterfallchartcolorconfiguration-groupcolorconfiguration>
                                              groupColorConfiguration :: (Prelude.Maybe WaterfallChartGroupColorConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallChartColorConfigurationProperty ::
  WaterfallChartColorConfigurationProperty
mkWaterfallChartColorConfigurationProperty
  = WaterfallChartColorConfigurationProperty
      {haddock_workaround_ = (),
       groupColorConfiguration = Prelude.Nothing}
instance ToResourceProperties WaterfallChartColorConfigurationProperty where
  toResourceProperties WaterfallChartColorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.WaterfallChartColorConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupColorConfiguration"
                              Prelude.<$> groupColorConfiguration])}
instance JSON.ToJSON WaterfallChartColorConfigurationProperty where
  toJSON WaterfallChartColorConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupColorConfiguration"
                 Prelude.<$> groupColorConfiguration]))
instance Property "GroupColorConfiguration" WaterfallChartColorConfigurationProperty where
  type PropertyType "GroupColorConfiguration" WaterfallChartColorConfigurationProperty = WaterfallChartGroupColorConfigurationProperty
  set newValue WaterfallChartColorConfigurationProperty {..}
    = WaterfallChartColorConfigurationProperty
        {groupColorConfiguration = Prelude.pure newValue, ..}