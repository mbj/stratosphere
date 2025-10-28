module Stratosphere.MediaTailor.Channel.TimeShiftConfigurationProperty (
        TimeShiftConfigurationProperty(..),
        mkTimeShiftConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeShiftConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-timeshiftconfiguration.html>
    TimeShiftConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-timeshiftconfiguration.html#cfn-mediatailor-channel-timeshiftconfiguration-maxtimedelayseconds>
                                    maxTimeDelaySeconds :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeShiftConfigurationProperty ::
  Value Prelude.Double -> TimeShiftConfigurationProperty
mkTimeShiftConfigurationProperty maxTimeDelaySeconds
  = TimeShiftConfigurationProperty
      {haddock_workaround_ = (),
       maxTimeDelaySeconds = maxTimeDelaySeconds}
instance ToResourceProperties TimeShiftConfigurationProperty where
  toResourceProperties TimeShiftConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::Channel.TimeShiftConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxTimeDelaySeconds" JSON..= maxTimeDelaySeconds]}
instance JSON.ToJSON TimeShiftConfigurationProperty where
  toJSON TimeShiftConfigurationProperty {..}
    = JSON.object ["MaxTimeDelaySeconds" JSON..= maxTimeDelaySeconds]
instance Property "MaxTimeDelaySeconds" TimeShiftConfigurationProperty where
  type PropertyType "MaxTimeDelaySeconds" TimeShiftConfigurationProperty = Value Prelude.Double
  set newValue TimeShiftConfigurationProperty {..}
    = TimeShiftConfigurationProperty
        {maxTimeDelaySeconds = newValue, ..}