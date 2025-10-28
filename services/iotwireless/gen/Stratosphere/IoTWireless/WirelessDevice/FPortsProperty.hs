module Stratosphere.IoTWireless.WirelessDevice.FPortsProperty (
        module Exports, FPortsProperty(..), mkFPortsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.ApplicationProperty as Exports
import Stratosphere.ResourceProperties
data FPortsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-fports.html>
    FPortsProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-fports.html#cfn-iotwireless-wirelessdevice-fports-applications>
                    applications :: (Prelude.Maybe [ApplicationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFPortsProperty :: FPortsProperty
mkFPortsProperty
  = FPortsProperty
      {haddock_workaround_ = (), applications = Prelude.Nothing}
instance ToResourceProperties FPortsProperty where
  toResourceProperties FPortsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.FPorts",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Applications" Prelude.<$> applications])}
instance JSON.ToJSON FPortsProperty where
  toJSON FPortsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Applications" Prelude.<$> applications]))
instance Property "Applications" FPortsProperty where
  type PropertyType "Applications" FPortsProperty = [ApplicationProperty]
  set newValue FPortsProperty {..}
    = FPortsProperty {applications = Prelude.pure newValue, ..}