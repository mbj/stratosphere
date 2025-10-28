module Stratosphere.IoTEvents.AlarmModel.AssetPropertyValueProperty (
        module Exports, AssetPropertyValueProperty(..),
        mkAssetPropertyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AssetPropertyTimestampProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AssetPropertyVariantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetPropertyValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-assetpropertyvalue.html>
    AssetPropertyValueProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-assetpropertyvalue.html#cfn-iotevents-alarmmodel-assetpropertyvalue-quality>
                                quality :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-assetpropertyvalue.html#cfn-iotevents-alarmmodel-assetpropertyvalue-timestamp>
                                timestamp :: (Prelude.Maybe AssetPropertyTimestampProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-assetpropertyvalue.html#cfn-iotevents-alarmmodel-assetpropertyvalue-value>
                                value :: AssetPropertyVariantProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetPropertyValueProperty ::
  AssetPropertyVariantProperty -> AssetPropertyValueProperty
mkAssetPropertyValueProperty value
  = AssetPropertyValueProperty
      {haddock_workaround_ = (), value = value,
       quality = Prelude.Nothing, timestamp = Prelude.Nothing}
instance ToResourceProperties AssetPropertyValueProperty where
  toResourceProperties AssetPropertyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.AssetPropertyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "Quality" Prelude.<$> quality,
                               (JSON..=) "Timestamp" Prelude.<$> timestamp]))}
instance JSON.ToJSON AssetPropertyValueProperty where
  toJSON AssetPropertyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "Quality" Prelude.<$> quality,
                  (JSON..=) "Timestamp" Prelude.<$> timestamp])))
instance Property "Quality" AssetPropertyValueProperty where
  type PropertyType "Quality" AssetPropertyValueProperty = Value Prelude.Text
  set newValue AssetPropertyValueProperty {..}
    = AssetPropertyValueProperty {quality = Prelude.pure newValue, ..}
instance Property "Timestamp" AssetPropertyValueProperty where
  type PropertyType "Timestamp" AssetPropertyValueProperty = AssetPropertyTimestampProperty
  set newValue AssetPropertyValueProperty {..}
    = AssetPropertyValueProperty
        {timestamp = Prelude.pure newValue, ..}
instance Property "Value" AssetPropertyValueProperty where
  type PropertyType "Value" AssetPropertyValueProperty = AssetPropertyVariantProperty
  set newValue AssetPropertyValueProperty {..}
    = AssetPropertyValueProperty {value = newValue, ..}