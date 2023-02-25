module Stratosphere.MediaTailor.PlaybackConfiguration.BumperProperty (
        BumperProperty(..), mkBumperProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BumperProperty
  = BumperProperty {endUrl :: (Prelude.Maybe (Value Prelude.Text)),
                    startUrl :: (Prelude.Maybe (Value Prelude.Text))}
mkBumperProperty :: BumperProperty
mkBumperProperty
  = BumperProperty
      {endUrl = Prelude.Nothing, startUrl = Prelude.Nothing}
instance ToResourceProperties BumperProperty where
  toResourceProperties BumperProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.Bumper",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndUrl" Prelude.<$> endUrl,
                            (JSON..=) "StartUrl" Prelude.<$> startUrl])}
instance JSON.ToJSON BumperProperty where
  toJSON BumperProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndUrl" Prelude.<$> endUrl,
               (JSON..=) "StartUrl" Prelude.<$> startUrl]))
instance Property "EndUrl" BumperProperty where
  type PropertyType "EndUrl" BumperProperty = Value Prelude.Text
  set newValue BumperProperty {..}
    = BumperProperty {endUrl = Prelude.pure newValue, ..}
instance Property "StartUrl" BumperProperty where
  type PropertyType "StartUrl" BumperProperty = Value Prelude.Text
  set newValue BumperProperty {..}
    = BumperProperty {startUrl = Prelude.pure newValue, ..}