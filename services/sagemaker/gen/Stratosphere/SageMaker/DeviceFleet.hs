module Stratosphere.SageMaker.DeviceFleet (
        module Exports, DeviceFleet(..), mkDeviceFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.DeviceFleet.EdgeOutputConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DeviceFleet
  = DeviceFleet {description :: (Prelude.Maybe (Value Prelude.Text)),
                 deviceFleetName :: (Value Prelude.Text),
                 outputConfig :: EdgeOutputConfigProperty,
                 roleArn :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
mkDeviceFleet ::
  Value Prelude.Text
  -> EdgeOutputConfigProperty -> Value Prelude.Text -> DeviceFleet
mkDeviceFleet deviceFleetName outputConfig roleArn
  = DeviceFleet
      {deviceFleetName = deviceFleetName, outputConfig = outputConfig,
       roleArn = roleArn, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DeviceFleet where
  toResourceProperties DeviceFleet {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DeviceFleet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeviceFleetName" JSON..= deviceFleetName,
                            "OutputConfig" JSON..= outputConfig, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DeviceFleet where
  toJSON DeviceFleet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceFleetName" JSON..= deviceFleetName,
               "OutputConfig" JSON..= outputConfig, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" DeviceFleet where
  type PropertyType "Description" DeviceFleet = Value Prelude.Text
  set newValue DeviceFleet {..}
    = DeviceFleet {description = Prelude.pure newValue, ..}
instance Property "DeviceFleetName" DeviceFleet where
  type PropertyType "DeviceFleetName" DeviceFleet = Value Prelude.Text
  set newValue DeviceFleet {..}
    = DeviceFleet {deviceFleetName = newValue, ..}
instance Property "OutputConfig" DeviceFleet where
  type PropertyType "OutputConfig" DeviceFleet = EdgeOutputConfigProperty
  set newValue DeviceFleet {..}
    = DeviceFleet {outputConfig = newValue, ..}
instance Property "RoleArn" DeviceFleet where
  type PropertyType "RoleArn" DeviceFleet = Value Prelude.Text
  set newValue DeviceFleet {..}
    = DeviceFleet {roleArn = newValue, ..}
instance Property "Tags" DeviceFleet where
  type PropertyType "Tags" DeviceFleet = [Tag]
  set newValue DeviceFleet {..}
    = DeviceFleet {tags = Prelude.pure newValue, ..}