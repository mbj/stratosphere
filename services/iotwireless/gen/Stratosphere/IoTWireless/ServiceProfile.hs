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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-serviceprofile.html>
    ServiceProfile {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-serviceprofile.html#cfn-iotwireless-serviceprofile-lorawan>
                    loRaWAN :: (Prelude.Maybe LoRaWANServiceProfileProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-serviceprofile.html#cfn-iotwireless-serviceprofile-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-serviceprofile.html#cfn-iotwireless-serviceprofile-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceProfile :: ServiceProfile
mkServiceProfile
  = ServiceProfile
      {haddock_workaround_ = (), loRaWAN = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
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