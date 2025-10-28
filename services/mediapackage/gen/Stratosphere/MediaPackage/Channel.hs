module Stratosphere.MediaPackage.Channel (
        module Exports, Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.Channel.HlsIngestProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.Channel.LogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Channel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-channel.html>
    Channel {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-channel.html#cfn-mediapackage-channel-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-channel.html#cfn-mediapackage-channel-egressaccesslogs>
             egressAccessLogs :: (Prelude.Maybe LogConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-channel.html#cfn-mediapackage-channel-hlsingest>
             hlsIngest :: (Prelude.Maybe HlsIngestProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-channel.html#cfn-mediapackage-channel-id>
             id :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-channel.html#cfn-mediapackage-channel-ingressaccesslogs>
             ingressAccessLogs :: (Prelude.Maybe LogConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-channel.html#cfn-mediapackage-channel-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel :: Value Prelude.Text -> Channel
mkChannel id
  = Channel
      {haddock_workaround_ = (), id = id, description = Prelude.Nothing,
       egressAccessLogs = Prelude.Nothing, hlsIngest = Prelude.Nothing,
       ingressAccessLogs = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::Channel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EgressAccessLogs" Prelude.<$> egressAccessLogs,
                               (JSON..=) "HlsIngest" Prelude.<$> hlsIngest,
                               (JSON..=) "IngressAccessLogs" Prelude.<$> ingressAccessLogs,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EgressAccessLogs" Prelude.<$> egressAccessLogs,
                  (JSON..=) "HlsIngest" Prelude.<$> hlsIngest,
                  (JSON..=) "IngressAccessLogs" Prelude.<$> ingressAccessLogs,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Channel where
  type PropertyType "Description" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {description = Prelude.pure newValue, ..}
instance Property "EgressAccessLogs" Channel where
  type PropertyType "EgressAccessLogs" Channel = LogConfigurationProperty
  set newValue Channel {..}
    = Channel {egressAccessLogs = Prelude.pure newValue, ..}
instance Property "HlsIngest" Channel where
  type PropertyType "HlsIngest" Channel = HlsIngestProperty
  set newValue Channel {..}
    = Channel {hlsIngest = Prelude.pure newValue, ..}
instance Property "Id" Channel where
  type PropertyType "Id" Channel = Value Prelude.Text
  set newValue Channel {..} = Channel {id = newValue, ..}
instance Property "IngressAccessLogs" Channel where
  type PropertyType "IngressAccessLogs" Channel = LogConfigurationProperty
  set newValue Channel {..}
    = Channel {ingressAccessLogs = Prelude.pure newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = [Tag]
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}