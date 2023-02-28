module Stratosphere.IoTWireless.ServiceProfile (
        module Exports, ServiceProfile(..), mkServiceProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.ServiceProfile.LoRaWANServiceProfileProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceProfile
  = ServiceProfile {loRaWAN :: (Prelude.Maybe LoRaWANServiceProfileProperty),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag])}
mkServiceProfile :: ServiceProfile
mkServiceProfile
  = ServiceProfile
      {loRaWAN = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ServiceProfile where
  toResourceProperties ServiceProfile {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::ServiceProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ServiceProfile where
  toJSON ServiceProfile {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "LoRaWAN" ServiceProfile where
  type PropertyType "LoRaWAN" ServiceProfile = LoRaWANServiceProfileProperty
  set newValue ServiceProfile {..}
    = ServiceProfile {loRaWAN = Prelude.pure newValue, ..}
instance Property "Name" ServiceProfile where
  type PropertyType "Name" ServiceProfile = Value Prelude.Text
  set newValue ServiceProfile {..}
    = ServiceProfile {name = Prelude.pure newValue, ..}
instance Property "Tags" ServiceProfile where
  type PropertyType "Tags" ServiceProfile = [Tag]
  set newValue ServiceProfile {..}
    = ServiceProfile {tags = Prelude.pure newValue, ..}