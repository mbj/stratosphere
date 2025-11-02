module Stratosphere.CloudTrail.Channel (
        module Exports, Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.Channel.DestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Channel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-channel.html>
    Channel {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-channel.html#cfn-cloudtrail-channel-destinations>
             destinations :: (Prelude.Maybe [DestinationProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-channel.html#cfn-cloudtrail-channel-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-channel.html#cfn-cloudtrail-channel-source>
             source :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-channel.html#cfn-cloudtrail-channel-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel :: Channel
mkChannel
  = Channel
      {haddock_workaround_ = (), destinations = Prelude.Nothing,
       name = Prelude.Nothing, source = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Channel", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destinations" Prelude.<$> destinations,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Source" Prelude.<$> source,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destinations" Prelude.<$> destinations,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Source" Prelude.<$> source,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Destinations" Channel where
  type PropertyType "Destinations" Channel = [DestinationProperty]
  set newValue Channel {..}
    = Channel {destinations = Prelude.pure newValue, ..}
instance Property "Name" Channel where
  type PropertyType "Name" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {name = Prelude.pure newValue, ..}
instance Property "Source" Channel where
  type PropertyType "Source" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {source = Prelude.pure newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = [Tag]
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}