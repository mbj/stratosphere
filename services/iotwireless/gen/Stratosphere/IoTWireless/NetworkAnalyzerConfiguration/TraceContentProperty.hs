module Stratosphere.IoTWireless.NetworkAnalyzerConfiguration.TraceContentProperty (
        TraceContentProperty(..), mkTraceContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TraceContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-networkanalyzerconfiguration-tracecontent.html>
    TraceContentProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-networkanalyzerconfiguration-tracecontent.html#cfn-iotwireless-networkanalyzerconfiguration-tracecontent-loglevel>
                          logLevel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-networkanalyzerconfiguration-tracecontent.html#cfn-iotwireless-networkanalyzerconfiguration-tracecontent-wirelessdeviceframeinfo>
                          wirelessDeviceFrameInfo :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTraceContentProperty :: TraceContentProperty
mkTraceContentProperty
  = TraceContentProperty
      {haddock_workaround_ = (), logLevel = Prelude.Nothing,
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