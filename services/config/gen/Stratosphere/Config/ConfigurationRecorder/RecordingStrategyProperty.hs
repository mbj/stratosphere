module Stratosphere.Config.ConfigurationRecorder.RecordingStrategyProperty (
        RecordingStrategyProperty(..), mkRecordingStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordingStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingstrategy.html>
    RecordingStrategyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingstrategy.html#cfn-config-configurationrecorder-recordingstrategy-useonly>
                               useOnly :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingStrategyProperty ::
  Value Prelude.Text -> RecordingStrategyProperty
mkRecordingStrategyProperty useOnly
  = RecordingStrategyProperty
      {haddock_workaround_ = (), useOnly = useOnly}
instance ToResourceProperties RecordingStrategyProperty where
  toResourceProperties RecordingStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder.RecordingStrategy",
         supportsTags = Prelude.False,
         properties = ["UseOnly" JSON..= useOnly]}
instance JSON.ToJSON RecordingStrategyProperty where
  toJSON RecordingStrategyProperty {..}
    = JSON.object ["UseOnly" JSON..= useOnly]
instance Property "UseOnly" RecordingStrategyProperty where
  type PropertyType "UseOnly" RecordingStrategyProperty = Value Prelude.Text
  set newValue RecordingStrategyProperty {..}
    = RecordingStrategyProperty {useOnly = newValue, ..}