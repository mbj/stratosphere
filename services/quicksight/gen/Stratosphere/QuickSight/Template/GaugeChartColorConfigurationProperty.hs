module Stratosphere.QuickSight.Template.GaugeChartColorConfigurationProperty (
        GaugeChartColorConfigurationProperty(..),
        mkGaugeChartColorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GaugeChartColorConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartcolorconfiguration.html>
    GaugeChartColorConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartcolorconfiguration.html#cfn-quicksight-template-gaugechartcolorconfiguration-backgroundcolor>
                                          backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartcolorconfiguration.html#cfn-quicksight-template-gaugechartcolorconfiguration-foregroundcolor>
                                          foregroundColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartColorConfigurationProperty ::
  GaugeChartColorConfigurationProperty
mkGaugeChartColorConfigurationProperty
  = GaugeChartColorConfigurationProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       foregroundColor = Prelude.Nothing}
instance ToResourceProperties GaugeChartColorConfigurationProperty where
  toResourceProperties GaugeChartColorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GaugeChartColorConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "ForegroundColor" Prelude.<$> foregroundColor])}
instance JSON.ToJSON GaugeChartColorConfigurationProperty where
  toJSON GaugeChartColorConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "ForegroundColor" Prelude.<$> foregroundColor]))
instance Property "BackgroundColor" GaugeChartColorConfigurationProperty where
  type PropertyType "BackgroundColor" GaugeChartColorConfigurationProperty = Value Prelude.Text
  set newValue GaugeChartColorConfigurationProperty {..}
    = GaugeChartColorConfigurationProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "ForegroundColor" GaugeChartColorConfigurationProperty where
  type PropertyType "ForegroundColor" GaugeChartColorConfigurationProperty = Value Prelude.Text
  set newValue GaugeChartColorConfigurationProperty {..}
    = GaugeChartColorConfigurationProperty
        {foregroundColor = Prelude.pure newValue, ..}