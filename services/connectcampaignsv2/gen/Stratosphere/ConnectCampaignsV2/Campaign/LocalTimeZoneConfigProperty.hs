module Stratosphere.ConnectCampaignsV2.Campaign.LocalTimeZoneConfigProperty (
        LocalTimeZoneConfigProperty(..), mkLocalTimeZoneConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalTimeZoneConfigProperty
  = LocalTimeZoneConfigProperty {defaultTimeZone :: (Prelude.Maybe (Value Prelude.Text)),
                                 localTimeZoneDetection :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalTimeZoneConfigProperty :: LocalTimeZoneConfigProperty
mkLocalTimeZoneConfigProperty
  = LocalTimeZoneConfigProperty
      {defaultTimeZone = Prelude.Nothing,
       localTimeZoneDetection = Prelude.Nothing}
instance ToResourceProperties LocalTimeZoneConfigProperty where
  toResourceProperties LocalTimeZoneConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.LocalTimeZoneConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultTimeZone" Prelude.<$> defaultTimeZone,
                            (JSON..=) "LocalTimeZoneDetection"
                              Prelude.<$> localTimeZoneDetection])}
instance JSON.ToJSON LocalTimeZoneConfigProperty where
  toJSON LocalTimeZoneConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultTimeZone" Prelude.<$> defaultTimeZone,
               (JSON..=) "LocalTimeZoneDetection"
                 Prelude.<$> localTimeZoneDetection]))
instance Property "DefaultTimeZone" LocalTimeZoneConfigProperty where
  type PropertyType "DefaultTimeZone" LocalTimeZoneConfigProperty = Value Prelude.Text
  set newValue LocalTimeZoneConfigProperty {..}
    = LocalTimeZoneConfigProperty
        {defaultTimeZone = Prelude.pure newValue, ..}
instance Property "LocalTimeZoneDetection" LocalTimeZoneConfigProperty where
  type PropertyType "LocalTimeZoneDetection" LocalTimeZoneConfigProperty = ValueList Prelude.Text
  set newValue LocalTimeZoneConfigProperty {..}
    = LocalTimeZoneConfigProperty
        {localTimeZoneDetection = Prelude.pure newValue, ..}