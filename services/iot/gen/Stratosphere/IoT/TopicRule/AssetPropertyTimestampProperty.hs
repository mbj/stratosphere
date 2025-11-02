module Stratosphere.IoT.TopicRule.AssetPropertyTimestampProperty (
        AssetPropertyTimestampProperty(..),
        mkAssetPropertyTimestampProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetPropertyTimestampProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertytimestamp.html>
    AssetPropertyTimestampProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertytimestamp.html#cfn-iot-topicrule-assetpropertytimestamp-offsetinnanos>
                                    offsetInNanos :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-assetpropertytimestamp.html#cfn-iot-topicrule-assetpropertytimestamp-timeinseconds>
                                    timeInSeconds :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetPropertyTimestampProperty ::
  Value Prelude.Text -> AssetPropertyTimestampProperty
mkAssetPropertyTimestampProperty timeInSeconds
  = AssetPropertyTimestampProperty
      {haddock_workaround_ = (), timeInSeconds = timeInSeconds,
       offsetInNanos = Prelude.Nothing}
instance ToResourceProperties AssetPropertyTimestampProperty where
  toResourceProperties AssetPropertyTimestampProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.AssetPropertyTimestamp",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TimeInSeconds" JSON..= timeInSeconds]
                           (Prelude.catMaybes
                              [(JSON..=) "OffsetInNanos" Prelude.<$> offsetInNanos]))}
instance JSON.ToJSON AssetPropertyTimestampProperty where
  toJSON AssetPropertyTimestampProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TimeInSeconds" JSON..= timeInSeconds]
              (Prelude.catMaybes
                 [(JSON..=) "OffsetInNanos" Prelude.<$> offsetInNanos])))
instance Property "OffsetInNanos" AssetPropertyTimestampProperty where
  type PropertyType "OffsetInNanos" AssetPropertyTimestampProperty = Value Prelude.Text
  set newValue AssetPropertyTimestampProperty {..}
    = AssetPropertyTimestampProperty
        {offsetInNanos = Prelude.pure newValue, ..}
instance Property "TimeInSeconds" AssetPropertyTimestampProperty where
  type PropertyType "TimeInSeconds" AssetPropertyTimestampProperty = Value Prelude.Text
  set newValue AssetPropertyTimestampProperty {..}
    = AssetPropertyTimestampProperty {timeInSeconds = newValue, ..}