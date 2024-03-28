module Stratosphere.MediaPackageV2.ChannelGroup (
        ChannelGroup(..), mkChannelGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ChannelGroup
  = ChannelGroup {channelGroupName :: (Value Prelude.Text),
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelGroup :: Value Prelude.Text -> ChannelGroup
mkChannelGroup channelGroupName
  = ChannelGroup
      {channelGroupName = channelGroupName,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ChannelGroup where
  toResourceProperties ChannelGroup {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::ChannelGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelGroupName" JSON..= channelGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ChannelGroup where
  toJSON ChannelGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelGroupName" JSON..= channelGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ChannelGroupName" ChannelGroup where
  type PropertyType "ChannelGroupName" ChannelGroup = Value Prelude.Text
  set newValue ChannelGroup {..}
    = ChannelGroup {channelGroupName = newValue, ..}
instance Property "Description" ChannelGroup where
  type PropertyType "Description" ChannelGroup = Value Prelude.Text
  set newValue ChannelGroup {..}
    = ChannelGroup {description = Prelude.pure newValue, ..}
instance Property "Tags" ChannelGroup where
  type PropertyType "Tags" ChannelGroup = [Tag]
  set newValue ChannelGroup {..}
    = ChannelGroup {tags = Prelude.pure newValue, ..}