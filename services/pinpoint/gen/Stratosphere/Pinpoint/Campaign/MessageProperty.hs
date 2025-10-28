module Stratosphere.Pinpoint.Campaign.MessageProperty (
        MessageProperty(..), mkMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html>
    MessageProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-action>
                     action :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-body>
                     body :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageiconurl>
                     imageIconUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imagesmalliconurl>
                     imageSmallIconUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageurl>
                     imageUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-jsonbody>
                     jsonBody :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-mediaurl>
                     mediaUrl :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-rawcontent>
                     rawContent :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-silentpush>
                     silentPush :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-timetolive>
                     timeToLive :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-title>
                     title :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-url>
                     url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageProperty :: MessageProperty
mkMessageProperty
  = MessageProperty
      {haddock_workaround_ = (), action = Prelude.Nothing,
       body = Prelude.Nothing, imageIconUrl = Prelude.Nothing,
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