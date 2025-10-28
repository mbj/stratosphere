module Stratosphere.IVS.Channel (
        Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Channel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html>
    Channel {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-authorized>
             authorized :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-insecureingest>
             insecureIngest :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-latencymode>
             latencyMode :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-preset>
             preset :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-recordingconfigurationarn>
             recordingConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-channel.html#cfn-ivs-channel-type>
             type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel :: Channel
mkChannel
  = Channel
      {haddock_workaround_ = (), authorized = Prelude.Nothing,
       insecureIngest = Prelude.Nothing, latencyMode = Prelude.Nothing,
       name = Prelude.Nothing, preset = Prelude.Nothing,
       recordingConfigurationArn = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Channel", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Authorized" Prelude.<$> authorized,
                            (JSON..=) "InsecureIngest" Prelude.<$> insecureIngest,
                            (JSON..=) "LatencyMode" Prelude.<$> latencyMode,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Preset" Prelude.<$> preset,
                            (JSON..=) "RecordingConfigurationArn"
                              Prelude.<$> recordingConfigurationArn,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Authorized" Prelude.<$> authorized,
               (JSON..=) "InsecureIngest" Prelude.<$> insecureIngest,
               (JSON..=) "LatencyMode" Prelude.<$> latencyMode,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Preset" Prelude.<$> preset,
               (JSON..=) "RecordingConfigurationArn"
                 Prelude.<$> recordingConfigurationArn,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Authorized" Channel where
  type PropertyType "Authorized" Channel = Value Prelude.Bool
  set newValue Channel {..}
    = Channel {authorized = Prelude.pure newValue, ..}
instance Property "InsecureIngest" Channel where
  type PropertyType "InsecureIngest" Channel = Value Prelude.Bool
  set newValue Channel {..}
    = Channel {insecureIngest = Prelude.pure newValue, ..}
instance Property "LatencyMode" Channel where
  type PropertyType "LatencyMode" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {latencyMode = Prelude.pure newValue, ..}
instance Property "Name" Channel where
  type PropertyType "Name" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {name = Prelude.pure newValue, ..}
instance Property "Preset" Channel where
  type PropertyType "Preset" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {preset = Prelude.pure newValue, ..}
instance Property "RecordingConfigurationArn" Channel where
  type PropertyType "RecordingConfigurationArn" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {recordingConfigurationArn = Prelude.pure newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = [Tag]
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}
instance Property "Type" Channel where
  type PropertyType "Type" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {type' = Prelude.pure newValue, ..}