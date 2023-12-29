module Stratosphere.IoTWireless.NetworkAnalyzerConfiguration (
        module Exports, NetworkAnalyzerConfiguration(..),
        mkNetworkAnalyzerConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.NetworkAnalyzerConfiguration.TraceContentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkAnalyzerConfiguration
  = NetworkAnalyzerConfiguration {description :: (Prelude.Maybe (Value Prelude.Text)),
                                  name :: (Value Prelude.Text),
                                  tags :: (Prelude.Maybe [Tag]),
                                  traceContent :: (Prelude.Maybe TraceContentProperty),
                                  wirelessDevices :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  wirelessGateways :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkAnalyzerConfiguration ::
  Value Prelude.Text -> NetworkAnalyzerConfiguration
mkNetworkAnalyzerConfiguration name
  = NetworkAnalyzerConfiguration
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing, traceContent = Prelude.Nothing,
       wirelessDevices = Prelude.Nothing,
       wirelessGateways = Prelude.Nothing}
instance ToResourceProperties NetworkAnalyzerConfiguration where
  toResourceProperties NetworkAnalyzerConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::NetworkAnalyzerConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TraceContent" Prelude.<$> traceContent,
                               (JSON..=) "WirelessDevices" Prelude.<$> wirelessDevices,
                               (JSON..=) "WirelessGateways" Prelude.<$> wirelessGateways]))}
instance JSON.ToJSON NetworkAnalyzerConfiguration where
  toJSON NetworkAnalyzerConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TraceContent" Prelude.<$> traceContent,
                  (JSON..=) "WirelessDevices" Prelude.<$> wirelessDevices,
                  (JSON..=) "WirelessGateways" Prelude.<$> wirelessGateways])))
instance Property "Description" NetworkAnalyzerConfiguration where
  type PropertyType "Description" NetworkAnalyzerConfiguration = Value Prelude.Text
  set newValue NetworkAnalyzerConfiguration {..}
    = NetworkAnalyzerConfiguration
        {description = Prelude.pure newValue, ..}
instance Property "Name" NetworkAnalyzerConfiguration where
  type PropertyType "Name" NetworkAnalyzerConfiguration = Value Prelude.Text
  set newValue NetworkAnalyzerConfiguration {..}
    = NetworkAnalyzerConfiguration {name = newValue, ..}
instance Property "Tags" NetworkAnalyzerConfiguration where
  type PropertyType "Tags" NetworkAnalyzerConfiguration = [Tag]
  set newValue NetworkAnalyzerConfiguration {..}
    = NetworkAnalyzerConfiguration {tags = Prelude.pure newValue, ..}
instance Property "TraceContent" NetworkAnalyzerConfiguration where
  type PropertyType "TraceContent" NetworkAnalyzerConfiguration = TraceContentProperty
  set newValue NetworkAnalyzerConfiguration {..}
    = NetworkAnalyzerConfiguration
        {traceContent = Prelude.pure newValue, ..}
instance Property "WirelessDevices" NetworkAnalyzerConfiguration where
  type PropertyType "WirelessDevices" NetworkAnalyzerConfiguration = ValueList Prelude.Text
  set newValue NetworkAnalyzerConfiguration {..}
    = NetworkAnalyzerConfiguration
        {wirelessDevices = Prelude.pure newValue, ..}
instance Property "WirelessGateways" NetworkAnalyzerConfiguration where
  type PropertyType "WirelessGateways" NetworkAnalyzerConfiguration = ValueList Prelude.Text
  set newValue NetworkAnalyzerConfiguration {..}
    = NetworkAnalyzerConfiguration
        {wirelessGateways = Prelude.pure newValue, ..}