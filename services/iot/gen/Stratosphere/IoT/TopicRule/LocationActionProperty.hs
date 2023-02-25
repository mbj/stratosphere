module Stratosphere.IoT.TopicRule.LocationActionProperty (
        module Exports, LocationActionProperty(..),
        mkLocationActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.TimestampProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationActionProperty
  = LocationActionProperty {deviceId :: (Value Prelude.Text),
                            latitude :: (Value Prelude.Text),
                            longitude :: (Value Prelude.Text),
                            roleArn :: (Value Prelude.Text),
                            timestamp :: (Prelude.Maybe TimestampProperty),
                            trackerName :: (Value Prelude.Text)}
mkLocationActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> LocationActionProperty
mkLocationActionProperty
  deviceId
  latitude
  longitude
  roleArn
  trackerName
  = LocationActionProperty
      {deviceId = deviceId, latitude = latitude, longitude = longitude,
       roleArn = roleArn, trackerName = trackerName,
       timestamp = Prelude.Nothing}
instance ToResourceProperties LocationActionProperty where
  toResourceProperties LocationActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.LocationAction",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeviceId" JSON..= deviceId, "Latitude" JSON..= latitude,
                            "Longitude" JSON..= longitude, "RoleArn" JSON..= roleArn,
                            "TrackerName" JSON..= trackerName]
                           (Prelude.catMaybes [(JSON..=) "Timestamp" Prelude.<$> timestamp]))}
instance JSON.ToJSON LocationActionProperty where
  toJSON LocationActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceId" JSON..= deviceId, "Latitude" JSON..= latitude,
               "Longitude" JSON..= longitude, "RoleArn" JSON..= roleArn,
               "TrackerName" JSON..= trackerName]
              (Prelude.catMaybes [(JSON..=) "Timestamp" Prelude.<$> timestamp])))
instance Property "DeviceId" LocationActionProperty where
  type PropertyType "DeviceId" LocationActionProperty = Value Prelude.Text
  set newValue LocationActionProperty {..}
    = LocationActionProperty {deviceId = newValue, ..}
instance Property "Latitude" LocationActionProperty where
  type PropertyType "Latitude" LocationActionProperty = Value Prelude.Text
  set newValue LocationActionProperty {..}
    = LocationActionProperty {latitude = newValue, ..}
instance Property "Longitude" LocationActionProperty where
  type PropertyType "Longitude" LocationActionProperty = Value Prelude.Text
  set newValue LocationActionProperty {..}
    = LocationActionProperty {longitude = newValue, ..}
instance Property "RoleArn" LocationActionProperty where
  type PropertyType "RoleArn" LocationActionProperty = Value Prelude.Text
  set newValue LocationActionProperty {..}
    = LocationActionProperty {roleArn = newValue, ..}
instance Property "Timestamp" LocationActionProperty where
  type PropertyType "Timestamp" LocationActionProperty = TimestampProperty
  set newValue LocationActionProperty {..}
    = LocationActionProperty {timestamp = Prelude.pure newValue, ..}
instance Property "TrackerName" LocationActionProperty where
  type PropertyType "TrackerName" LocationActionProperty = Value Prelude.Text
  set newValue LocationActionProperty {..}
    = LocationActionProperty {trackerName = newValue, ..}