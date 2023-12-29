module Stratosphere.MediaLive.Channel.EsamProperty (
        EsamProperty(..), mkEsamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EsamProperty
  = EsamProperty {acquisitionPointId :: (Prelude.Maybe (Value Prelude.Text)),
                  adAvailOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                  passwordParam :: (Prelude.Maybe (Value Prelude.Text)),
                  poisEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                  username :: (Prelude.Maybe (Value Prelude.Text)),
                  zoneIdentity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEsamProperty :: EsamProperty
mkEsamProperty
  = EsamProperty
      {acquisitionPointId = Prelude.Nothing,
       adAvailOffset = Prelude.Nothing, passwordParam = Prelude.Nothing,
       poisEndpoint = Prelude.Nothing, username = Prelude.Nothing,
       zoneIdentity = Prelude.Nothing}
instance ToResourceProperties EsamProperty where
  toResourceProperties EsamProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Esam",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcquisitionPointId" Prelude.<$> acquisitionPointId,
                            (JSON..=) "AdAvailOffset" Prelude.<$> adAvailOffset,
                            (JSON..=) "PasswordParam" Prelude.<$> passwordParam,
                            (JSON..=) "PoisEndpoint" Prelude.<$> poisEndpoint,
                            (JSON..=) "Username" Prelude.<$> username,
                            (JSON..=) "ZoneIdentity" Prelude.<$> zoneIdentity])}
instance JSON.ToJSON EsamProperty where
  toJSON EsamProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcquisitionPointId" Prelude.<$> acquisitionPointId,
               (JSON..=) "AdAvailOffset" Prelude.<$> adAvailOffset,
               (JSON..=) "PasswordParam" Prelude.<$> passwordParam,
               (JSON..=) "PoisEndpoint" Prelude.<$> poisEndpoint,
               (JSON..=) "Username" Prelude.<$> username,
               (JSON..=) "ZoneIdentity" Prelude.<$> zoneIdentity]))
instance Property "AcquisitionPointId" EsamProperty where
  type PropertyType "AcquisitionPointId" EsamProperty = Value Prelude.Text
  set newValue EsamProperty {..}
    = EsamProperty {acquisitionPointId = Prelude.pure newValue, ..}
instance Property "AdAvailOffset" EsamProperty where
  type PropertyType "AdAvailOffset" EsamProperty = Value Prelude.Integer
  set newValue EsamProperty {..}
    = EsamProperty {adAvailOffset = Prelude.pure newValue, ..}
instance Property "PasswordParam" EsamProperty where
  type PropertyType "PasswordParam" EsamProperty = Value Prelude.Text
  set newValue EsamProperty {..}
    = EsamProperty {passwordParam = Prelude.pure newValue, ..}
instance Property "PoisEndpoint" EsamProperty where
  type PropertyType "PoisEndpoint" EsamProperty = Value Prelude.Text
  set newValue EsamProperty {..}
    = EsamProperty {poisEndpoint = Prelude.pure newValue, ..}
instance Property "Username" EsamProperty where
  type PropertyType "Username" EsamProperty = Value Prelude.Text
  set newValue EsamProperty {..}
    = EsamProperty {username = Prelude.pure newValue, ..}
instance Property "ZoneIdentity" EsamProperty where
  type PropertyType "ZoneIdentity" EsamProperty = Value Prelude.Text
  set newValue EsamProperty {..}
    = EsamProperty {zoneIdentity = Prelude.pure newValue, ..}