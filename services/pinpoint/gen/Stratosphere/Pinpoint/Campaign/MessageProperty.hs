module Stratosphere.Pinpoint.Campaign.MessageProperty (
        MessageProperty(..), mkMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageProperty
  = MessageProperty {action :: (Prelude.Maybe (Value Prelude.Text)),
                     body :: (Prelude.Maybe (Value Prelude.Text)),
                     imageIconUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     imageSmallIconUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     imageUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     jsonBody :: (Prelude.Maybe (Value Prelude.Text)),
                     mediaUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     rawContent :: (Prelude.Maybe (Value Prelude.Text)),
                     silentPush :: (Prelude.Maybe (Value Prelude.Bool)),
                     timeToLive :: (Prelude.Maybe (Value Prelude.Integer)),
                     title :: (Prelude.Maybe (Value Prelude.Text)),
                     url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageProperty :: MessageProperty
mkMessageProperty
  = MessageProperty
      {action = Prelude.Nothing, body = Prelude.Nothing,
       imageIconUrl = Prelude.Nothing,
       imageSmallIconUrl = Prelude.Nothing, imageUrl = Prelude.Nothing,
       jsonBody = Prelude.Nothing, mediaUrl = Prelude.Nothing,
       rawContent = Prelude.Nothing, silentPush = Prelude.Nothing,
       timeToLive = Prelude.Nothing, title = Prelude.Nothing,
       url = Prelude.Nothing}
instance ToResourceProperties MessageProperty where
  toResourceProperties MessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.Message",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "ImageIconUrl" Prelude.<$> imageIconUrl,
                            (JSON..=) "ImageSmallIconUrl" Prelude.<$> imageSmallIconUrl,
                            (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
                            (JSON..=) "JsonBody" Prelude.<$> jsonBody,
                            (JSON..=) "MediaUrl" Prelude.<$> mediaUrl,
                            (JSON..=) "RawContent" Prelude.<$> rawContent,
                            (JSON..=) "SilentPush" Prelude.<$> silentPush,
                            (JSON..=) "TimeToLive" Prelude.<$> timeToLive,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON MessageProperty where
  toJSON MessageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "ImageIconUrl" Prelude.<$> imageIconUrl,
               (JSON..=) "ImageSmallIconUrl" Prelude.<$> imageSmallIconUrl,
               (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
               (JSON..=) "JsonBody" Prelude.<$> jsonBody,
               (JSON..=) "MediaUrl" Prelude.<$> mediaUrl,
               (JSON..=) "RawContent" Prelude.<$> rawContent,
               (JSON..=) "SilentPush" Prelude.<$> silentPush,
               (JSON..=) "TimeToLive" Prelude.<$> timeToLive,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "Action" MessageProperty where
  type PropertyType "Action" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {action = Prelude.pure newValue, ..}
instance Property "Body" MessageProperty where
  type PropertyType "Body" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {body = Prelude.pure newValue, ..}
instance Property "ImageIconUrl" MessageProperty where
  type PropertyType "ImageIconUrl" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {imageIconUrl = Prelude.pure newValue, ..}
instance Property "ImageSmallIconUrl" MessageProperty where
  type PropertyType "ImageSmallIconUrl" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {imageSmallIconUrl = Prelude.pure newValue, ..}
instance Property "ImageUrl" MessageProperty where
  type PropertyType "ImageUrl" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {imageUrl = Prelude.pure newValue, ..}
instance Property "JsonBody" MessageProperty where
  type PropertyType "JsonBody" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {jsonBody = Prelude.pure newValue, ..}
instance Property "MediaUrl" MessageProperty where
  type PropertyType "MediaUrl" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {mediaUrl = Prelude.pure newValue, ..}
instance Property "RawContent" MessageProperty where
  type PropertyType "RawContent" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {rawContent = Prelude.pure newValue, ..}
instance Property "SilentPush" MessageProperty where
  type PropertyType "SilentPush" MessageProperty = Value Prelude.Bool
  set newValue MessageProperty {..}
    = MessageProperty {silentPush = Prelude.pure newValue, ..}
instance Property "TimeToLive" MessageProperty where
  type PropertyType "TimeToLive" MessageProperty = Value Prelude.Integer
  set newValue MessageProperty {..}
    = MessageProperty {timeToLive = Prelude.pure newValue, ..}
instance Property "Title" MessageProperty where
  type PropertyType "Title" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {title = Prelude.pure newValue, ..}
instance Property "Url" MessageProperty where
  type PropertyType "Url" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {url = Prelude.pure newValue, ..}