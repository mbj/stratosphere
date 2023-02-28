module Stratosphere.IoTWireless.NetworkAnalyzerConfiguration.TraceContentProperty (
        TraceContentProperty(..), mkTraceContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TraceContentProperty
  = TraceContentProperty {logLevel :: (Prelude.Maybe (Value Prelude.Text)),
                          wirelessDeviceFrameInfo :: (Prelude.Maybe (Value Prelude.Text))}
mkTraceContentProperty :: TraceContentProperty
mkTraceContentProperty
  = TraceContentProperty
      {logLevel = Prelude.Nothing,
       wirelessDeviceFrameInfo = Prelude.Nothing}
instance ToResourceProperties TraceContentProperty where
  toResourceProperties TraceContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::NetworkAnalyzerConfiguration.TraceContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogLevel" Prelude.<$> logLevel,
                            (JSON..=) "WirelessDeviceFrameInfo"
                              Prelude.<$> wirelessDeviceFrameInfo])}
instance JSON.ToJSON TraceContentProperty where
  toJSON TraceContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogLevel" Prelude.<$> logLevel,
               (JSON..=) "WirelessDeviceFrameInfo"
                 Prelude.<$> wirelessDeviceFrameInfo]))
instance Property "LogLevel" TraceContentProperty where
  type PropertyType "LogLevel" TraceContentProperty = Value Prelude.Text
  set newValue TraceContentProperty {..}
    = TraceContentProperty {logLevel = Prelude.pure newValue, ..}
instance Property "WirelessDeviceFrameInfo" TraceContentProperty where
  type PropertyType "WirelessDeviceFrameInfo" TraceContentProperty = Value Prelude.Text
  set newValue TraceContentProperty {..}
    = TraceContentProperty
        {wirelessDeviceFrameInfo = Prelude.pure newValue, ..}