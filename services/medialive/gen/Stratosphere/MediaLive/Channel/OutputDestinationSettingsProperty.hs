module Stratosphere.MediaLive.Channel.OutputDestinationSettingsProperty (
        OutputDestinationSettingsProperty(..),
        mkOutputDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputDestinationSettingsProperty
  = OutputDestinationSettingsProperty {passwordParam :: (Prelude.Maybe (Value Prelude.Text)),
                                       streamName :: (Prelude.Maybe (Value Prelude.Text)),
                                       url :: (Prelude.Maybe (Value Prelude.Text)),
                                       username :: (Prelude.Maybe (Value Prelude.Text))}
mkOutputDestinationSettingsProperty ::
  OutputDestinationSettingsProperty
mkOutputDestinationSettingsProperty
  = OutputDestinationSettingsProperty
      {passwordParam = Prelude.Nothing, streamName = Prelude.Nothing,
       url = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties OutputDestinationSettingsProperty where
  toResourceProperties OutputDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
                            (JSON..=) "StreamName" Prelude.<$> streamName,
                            (JSON..=) "Url" Prelude.<$> url,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON OutputDestinationSettingsProperty where
  toJSON OutputDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
               (JSON..=) "StreamName" Prelude.<$> streamName,
               (JSON..=) "Url" Prelude.<$> url,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "PasswordParam" OutputDestinationSettingsProperty where
  type PropertyType "PasswordParam" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {passwordParam = Prelude.pure newValue, ..}
instance Property "StreamName" OutputDestinationSettingsProperty where
  type PropertyType "StreamName" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {streamName = Prelude.pure newValue, ..}
instance Property "Url" OutputDestinationSettingsProperty where
  type PropertyType "Url" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {url = Prelude.pure newValue, ..}
instance Property "Username" OutputDestinationSettingsProperty where
  type PropertyType "Username" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {username = Prelude.pure newValue, ..}