module Stratosphere.IoTWireless.WirelessDevice.ApplicationProperty (
        ApplicationProperty(..), mkApplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationProperty
  = ApplicationProperty {destinationName :: (Prelude.Maybe (Value Prelude.Text)),
                         fPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationProperty :: ApplicationProperty
mkApplicationProperty
  = ApplicationProperty
      {destinationName = Prelude.Nothing, fPort = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties ApplicationProperty where
  toResourceProperties ApplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.Application",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationName" Prelude.<$> destinationName,
                            (JSON..=) "FPort" Prelude.<$> fPort,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ApplicationProperty where
  toJSON ApplicationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationName" Prelude.<$> destinationName,
               (JSON..=) "FPort" Prelude.<$> fPort,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "DestinationName" ApplicationProperty where
  type PropertyType "DestinationName" ApplicationProperty = Value Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {destinationName = Prelude.pure newValue, ..}
instance Property "FPort" ApplicationProperty where
  type PropertyType "FPort" ApplicationProperty = Value Prelude.Integer
  set newValue ApplicationProperty {..}
    = ApplicationProperty {fPort = Prelude.pure newValue, ..}
instance Property "Type" ApplicationProperty where
  type PropertyType "Type" ApplicationProperty = Value Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {type' = Prelude.pure newValue, ..}