module Stratosphere.QuickSight.Template.WaterfallChartGroupColorConfigurationProperty (
        WaterfallChartGroupColorConfigurationProperty(..),
        mkWaterfallChartGroupColorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WaterfallChartGroupColorConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartgroupcolorconfiguration.html>
    WaterfallChartGroupColorConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartgroupcolorconfiguration.html#cfn-quicksight-template-waterfallchartgroupcolorconfiguration-negativebarcolor>
                                                   negativeBarColor :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartgroupcolorconfiguration.html#cfn-quicksight-template-waterfallchartgroupcolorconfiguration-positivebarcolor>
                                                   positiveBarColor :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartgroupcolorconfiguration.html#cfn-quicksight-template-waterfallchartgroupcolorconfiguration-totalbarcolor>
                                                   totalBarColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallChartGroupColorConfigurationProperty ::
  WaterfallChartGroupColorConfigurationProperty
mkWaterfallChartGroupColorConfigurationProperty
  = WaterfallChartGroupColorConfigurationProperty
      {haddock_workaround_ = (), negativeBarColor = Prelude.Nothing,
       positiveBarColor = Prelude.Nothing,
       totalBarColor = Prelude.Nothing}
instance ToResourceProperties WaterfallChartGroupColorConfigurationProperty where
  toResourceProperties
    WaterfallChartGroupColorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.WaterfallChartGroupColorConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NegativeBarColor" Prelude.<$> negativeBarColor,
                            (JSON..=) "PositiveBarColor" Prelude.<$> positiveBarColor,
                            (JSON..=) "TotalBarColor" Prelude.<$> totalBarColor])}
instance JSON.ToJSON WaterfallChartGroupColorConfigurationProperty where
  toJSON WaterfallChartGroupColorConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NegativeBarColor" Prelude.<$> negativeBarColor,
               (JSON..=) "PositiveBarColor" Prelude.<$> positiveBarColor,
               (JSON..=) "TotalBarColor" Prelude.<$> totalBarColor]))
instance Property "NegativeBarColor" WaterfallChartGroupColorConfigurationProperty where
  type PropertyType "NegativeBarColor" WaterfallChartGroupColorConfigurationProperty = Value Prelude.Text
  set newValue WaterfallChartGroupColorConfigurationProperty {..}
    = WaterfallChartGroupColorConfigurationProperty
        {negativeBarColor = Prelude.pure newValue, ..}
instance Property "PositiveBarColor" WaterfallChartGroupColorConfigurationProperty where
  type PropertyType "PositiveBarColor" WaterfallChartGroupColorConfigurationProperty = Value Prelude.Text
  set newValue WaterfallChartGroupColorConfigurationProperty {..}
    = WaterfallChartGroupColorConfigurationProperty
        {positiveBarColor = Prelude.pure newValue, ..}
instance Property "TotalBarColor" WaterfallChartGroupColorConfigurationProperty where
  type PropertyType "TotalBarColor" WaterfallChartGroupColorConfigurationProperty = Value Prelude.Text
  set newValue WaterfallChartGroupColorConfigurationProperty {..}
    = WaterfallChartGroupColorConfigurationProperty
        {totalBarColor = Prelude.pure newValue, ..}