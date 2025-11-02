module Stratosphere.IoT.SecurityProfile.StatisticalThresholdProperty (
        StatisticalThresholdProperty(..), mkStatisticalThresholdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatisticalThresholdProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-statisticalthreshold.html>
    StatisticalThresholdProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-statisticalthreshold.html#cfn-iot-securityprofile-statisticalthreshold-statistic>
                                  statistic :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatisticalThresholdProperty :: StatisticalThresholdProperty
mkStatisticalThresholdProperty
  = StatisticalThresholdProperty
      {haddock_workaround_ = (), statistic = Prelude.Nothing}
instance ToResourceProperties StatisticalThresholdProperty where
  toResourceProperties StatisticalThresholdProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.StatisticalThreshold",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Statistic" Prelude.<$> statistic])}
instance JSON.ToJSON StatisticalThresholdProperty where
  toJSON StatisticalThresholdProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Statistic" Prelude.<$> statistic]))
instance Property "Statistic" StatisticalThresholdProperty where
  type PropertyType "Statistic" StatisticalThresholdProperty = Value Prelude.Text
  set newValue StatisticalThresholdProperty {..}
    = StatisticalThresholdProperty
        {statistic = Prelude.pure newValue, ..}