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
  = Channel {authorized :: (Prelude.Maybe (Value Prelude.Bool)),
             insecureIngest :: (Prelude.Maybe (Value Prelude.Bool)),
             latencyMode :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             recordingConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag]),
             type' :: (Prelude.Maybe (Value Prelude.Text))}
mkChannel :: Channel
mkChannel
  = Channel
      {authorized = Prelude.Nothing, insecureIngest = Prelude.Nothing,
       latencyMode = Prelude.Nothing, name = Prelude.Nothing,
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