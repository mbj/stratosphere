module Stratosphere.WorkSpacesWeb.UserAccessLoggingSettings (
        UserAccessLoggingSettings(..), mkUserAccessLoggingSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UserAccessLoggingSettings
  = UserAccessLoggingSettings {kinesisStreamArn :: (Value Prelude.Text),
                               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserAccessLoggingSettings ::
  Value Prelude.Text -> UserAccessLoggingSettings
mkUserAccessLoggingSettings kinesisStreamArn
  = UserAccessLoggingSettings
      {kinesisStreamArn = kinesisStreamArn, tags = Prelude.Nothing}
instance ToResourceProperties UserAccessLoggingSettings where
  toResourceProperties UserAccessLoggingSettings {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::UserAccessLoggingSettings",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KinesisStreamArn" JSON..= kinesisStreamArn]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON UserAccessLoggingSettings where
  toJSON UserAccessLoggingSettings {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KinesisStreamArn" JSON..= kinesisStreamArn]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "KinesisStreamArn" UserAccessLoggingSettings where
  type PropertyType "KinesisStreamArn" UserAccessLoggingSettings = Value Prelude.Text
  set newValue UserAccessLoggingSettings {..}
    = UserAccessLoggingSettings {kinesisStreamArn = newValue, ..}
instance Property "Tags" UserAccessLoggingSettings where
  type PropertyType "Tags" UserAccessLoggingSettings = [Tag]
  set newValue UserAccessLoggingSettings {..}
    = UserAccessLoggingSettings {tags = Prelude.pure newValue, ..}