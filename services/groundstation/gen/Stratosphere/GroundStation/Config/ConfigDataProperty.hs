module Stratosphere.GroundStation.Config.ConfigDataProperty (
        module Exports, ConfigDataProperty(..), mkConfigDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.Config.AntennaDownlinkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.AntennaDownlinkDemodDecodeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.AntennaUplinkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.DataflowEndpointConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.S3RecordingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.TrackingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.UplinkEchoConfigProperty as Exports
import Stratosphere.ResourceProperties
data ConfigDataProperty
  = ConfigDataProperty {antennaDownlinkConfig :: (Prelude.Maybe AntennaDownlinkConfigProperty),
                        antennaDownlinkDemodDecodeConfig :: (Prelude.Maybe AntennaDownlinkDemodDecodeConfigProperty),
                        antennaUplinkConfig :: (Prelude.Maybe AntennaUplinkConfigProperty),
                        dataflowEndpointConfig :: (Prelude.Maybe DataflowEndpointConfigProperty),
                        s3RecordingConfig :: (Prelude.Maybe S3RecordingConfigProperty),
                        trackingConfig :: (Prelude.Maybe TrackingConfigProperty),
                        uplinkEchoConfig :: (Prelude.Maybe UplinkEchoConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigDataProperty :: ConfigDataProperty
mkConfigDataProperty
  = ConfigDataProperty
      {antennaDownlinkConfig = Prelude.Nothing,
       antennaDownlinkDemodDecodeConfig = Prelude.Nothing,
       antennaUplinkConfig = Prelude.Nothing,
       dataflowEndpointConfig = Prelude.Nothing,
       s3RecordingConfig = Prelude.Nothing,
       trackingConfig = Prelude.Nothing,
       uplinkEchoConfig = Prelude.Nothing}
instance ToResourceProperties ConfigDataProperty where
  toResourceProperties ConfigDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.ConfigData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AntennaDownlinkConfig"
                              Prelude.<$> antennaDownlinkConfig,
                            (JSON..=) "AntennaDownlinkDemodDecodeConfig"
                              Prelude.<$> antennaDownlinkDemodDecodeConfig,
                            (JSON..=) "AntennaUplinkConfig" Prelude.<$> antennaUplinkConfig,
                            (JSON..=) "DataflowEndpointConfig"
                              Prelude.<$> dataflowEndpointConfig,
                            (JSON..=) "S3RecordingConfig" Prelude.<$> s3RecordingConfig,
                            (JSON..=) "TrackingConfig" Prelude.<$> trackingConfig,
                            (JSON..=) "UplinkEchoConfig" Prelude.<$> uplinkEchoConfig])}
instance JSON.ToJSON ConfigDataProperty where
  toJSON ConfigDataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AntennaDownlinkConfig"
                 Prelude.<$> antennaDownlinkConfig,
               (JSON..=) "AntennaDownlinkDemodDecodeConfig"
                 Prelude.<$> antennaDownlinkDemodDecodeConfig,
               (JSON..=) "AntennaUplinkConfig" Prelude.<$> antennaUplinkConfig,
               (JSON..=) "DataflowEndpointConfig"
                 Prelude.<$> dataflowEndpointConfig,
               (JSON..=) "S3RecordingConfig" Prelude.<$> s3RecordingConfig,
               (JSON..=) "TrackingConfig" Prelude.<$> trackingConfig,
               (JSON..=) "UplinkEchoConfig" Prelude.<$> uplinkEchoConfig]))
instance Property "AntennaDownlinkConfig" ConfigDataProperty where
  type PropertyType "AntennaDownlinkConfig" ConfigDataProperty = AntennaDownlinkConfigProperty
  set newValue ConfigDataProperty {..}
    = ConfigDataProperty
        {antennaDownlinkConfig = Prelude.pure newValue, ..}
instance Property "AntennaDownlinkDemodDecodeConfig" ConfigDataProperty where
  type PropertyType "AntennaDownlinkDemodDecodeConfig" ConfigDataProperty = AntennaDownlinkDemodDecodeConfigProperty
  set newValue ConfigDataProperty {..}
    = ConfigDataProperty
        {antennaDownlinkDemodDecodeConfig = Prelude.pure newValue, ..}
instance Property "AntennaUplinkConfig" ConfigDataProperty where
  type PropertyType "AntennaUplinkConfig" ConfigDataProperty = AntennaUplinkConfigProperty
  set newValue ConfigDataProperty {..}
    = ConfigDataProperty
        {antennaUplinkConfig = Prelude.pure newValue, ..}
instance Property "DataflowEndpointConfig" ConfigDataProperty where
  type PropertyType "DataflowEndpointConfig" ConfigDataProperty = DataflowEndpointConfigProperty
  set newValue ConfigDataProperty {..}
    = ConfigDataProperty
        {dataflowEndpointConfig = Prelude.pure newValue, ..}
instance Property "S3RecordingConfig" ConfigDataProperty where
  type PropertyType "S3RecordingConfig" ConfigDataProperty = S3RecordingConfigProperty
  set newValue ConfigDataProperty {..}
    = ConfigDataProperty
        {s3RecordingConfig = Prelude.pure newValue, ..}
instance Property "TrackingConfig" ConfigDataProperty where
  type PropertyType "TrackingConfig" ConfigDataProperty = TrackingConfigProperty
  set newValue ConfigDataProperty {..}
    = ConfigDataProperty {trackingConfig = Prelude.pure newValue, ..}
instance Property "UplinkEchoConfig" ConfigDataProperty where
  type PropertyType "UplinkEchoConfig" ConfigDataProperty = UplinkEchoConfigProperty
  set newValue ConfigDataProperty {..}
    = ConfigDataProperty {uplinkEchoConfig = Prelude.pure newValue, ..}