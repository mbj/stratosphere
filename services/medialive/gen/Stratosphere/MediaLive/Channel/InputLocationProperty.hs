module Stratosphere.MediaLive.Channel.InputLocationProperty (
        InputLocationProperty(..), mkInputLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputLocationProperty
  = InputLocationProperty {passwordParam :: (Prelude.Maybe (Value Prelude.Text)),
                           uri :: (Prelude.Maybe (Value Prelude.Text)),
                           username :: (Prelude.Maybe (Value Prelude.Text))}
mkInputLocationProperty :: InputLocationProperty
mkInputLocationProperty
  = InputLocationProperty
      {passwordParam = Prelude.Nothing, uri = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties InputLocationProperty where
  toResourceProperties InputLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputLocation",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
                            (JSON..=) "Uri" Prelude.<$> uri,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON InputLocationProperty where
  toJSON InputLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
               (JSON..=) "Uri" Prelude.<$> uri,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "PasswordParam" InputLocationProperty where
  type PropertyType "PasswordParam" InputLocationProperty = Value Prelude.Text
  set newValue InputLocationProperty {..}
    = InputLocationProperty {passwordParam = Prelude.pure newValue, ..}
instance Property "Uri" InputLocationProperty where
  type PropertyType "Uri" InputLocationProperty = Value Prelude.Text
  set newValue InputLocationProperty {..}
    = InputLocationProperty {uri = Prelude.pure newValue, ..}
instance Property "Username" InputLocationProperty where
  type PropertyType "Username" InputLocationProperty = Value Prelude.Text
  set newValue InputLocationProperty {..}
    = InputLocationProperty {username = Prelude.pure newValue, ..}