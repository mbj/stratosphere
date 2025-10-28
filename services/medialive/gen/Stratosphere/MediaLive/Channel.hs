module Stratosphere.MediaLive.Channel (
        module Exports, Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AnywhereSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CdiInputSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EncoderSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputAttachmentProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MaintenanceCreateSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VpcOutputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Channel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html>
    Channel {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-anywheresettings>
             anywhereSettings :: (Prelude.Maybe AnywhereSettingsProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-cdiinputspecification>
             cdiInputSpecification :: (Prelude.Maybe CdiInputSpecificationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-channelclass>
             channelClass :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-destinations>
             destinations :: (Prelude.Maybe [OutputDestinationProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-encodersettings>
             encoderSettings :: (Prelude.Maybe EncoderSettingsProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-inputattachments>
             inputAttachments :: (Prelude.Maybe [InputAttachmentProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-inputspecification>
             inputSpecification :: (Prelude.Maybe InputSpecificationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-loglevel>
             logLevel :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-maintenance>
             maintenance :: (Prelude.Maybe MaintenanceCreateSettingsProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-rolearn>
             roleArn :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-tags>
             tags :: (Prelude.Maybe JSON.Object),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-vpc>
             vpc :: (Prelude.Maybe VpcOutputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannel :: Channel
mkChannel
  = Channel
      {haddock_workaround_ = (), anywhereSettings = Prelude.Nothing,
       cdiInputSpecification = Prelude.Nothing,
       channelClass = Prelude.Nothing, destinations = Prelude.Nothing,
       encoderSettings = Prelude.Nothing,
       inputAttachments = Prelude.Nothing,
       inputSpecification = Prelude.Nothing, logLevel = Prelude.Nothing,
       maintenance = Prelude.Nothing, name = Prelude.Nothing,
       roleArn = Prelude.Nothing, tags = Prelude.Nothing,
       vpc = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnywhereSettings" Prelude.<$> anywhereSettings,
                            (JSON..=) "CdiInputSpecification"
                              Prelude.<$> cdiInputSpecification,
                            (JSON..=) "ChannelClass" Prelude.<$> channelClass,
                            (JSON..=) "Destinations" Prelude.<$> destinations,
                            (JSON..=) "EncoderSettings" Prelude.<$> encoderSettings,
                            (JSON..=) "InputAttachments" Prelude.<$> inputAttachments,
                            (JSON..=) "InputSpecification" Prelude.<$> inputSpecification,
                            (JSON..=) "LogLevel" Prelude.<$> logLevel,
                            (JSON..=) "Maintenance" Prelude.<$> maintenance,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Vpc" Prelude.<$> vpc])}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnywhereSettings" Prelude.<$> anywhereSettings,
               (JSON..=) "CdiInputSpecification"
                 Prelude.<$> cdiInputSpecification,
               (JSON..=) "ChannelClass" Prelude.<$> channelClass,
               (JSON..=) "Destinations" Prelude.<$> destinations,
               (JSON..=) "EncoderSettings" Prelude.<$> encoderSettings,
               (JSON..=) "InputAttachments" Prelude.<$> inputAttachments,
               (JSON..=) "InputSpecification" Prelude.<$> inputSpecification,
               (JSON..=) "LogLevel" Prelude.<$> logLevel,
               (JSON..=) "Maintenance" Prelude.<$> maintenance,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Vpc" Prelude.<$> vpc]))
instance Property "AnywhereSettings" Channel where
  type PropertyType "AnywhereSettings" Channel = AnywhereSettingsProperty
  set newValue Channel {..}
    = Channel {anywhereSettings = Prelude.pure newValue, ..}
instance Property "CdiInputSpecification" Channel where
  type PropertyType "CdiInputSpecification" Channel = CdiInputSpecificationProperty
  set newValue Channel {..}
    = Channel {cdiInputSpecification = Prelude.pure newValue, ..}
instance Property "ChannelClass" Channel where
  type PropertyType "ChannelClass" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {channelClass = Prelude.pure newValue, ..}
instance Property "Destinations" Channel where
  type PropertyType "Destinations" Channel = [OutputDestinationProperty]
  set newValue Channel {..}
    = Channel {destinations = Prelude.pure newValue, ..}
instance Property "EncoderSettings" Channel where
  type PropertyType "EncoderSettings" Channel = EncoderSettingsProperty
  set newValue Channel {..}
    = Channel {encoderSettings = Prelude.pure newValue, ..}
instance Property "InputAttachments" Channel where
  type PropertyType "InputAttachments" Channel = [InputAttachmentProperty]
  set newValue Channel {..}
    = Channel {inputAttachments = Prelude.pure newValue, ..}
instance Property "InputSpecification" Channel where
  type PropertyType "InputSpecification" Channel = InputSpecificationProperty
  set newValue Channel {..}
    = Channel {inputSpecification = Prelude.pure newValue, ..}
instance Property "LogLevel" Channel where
  type PropertyType "LogLevel" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {logLevel = Prelude.pure newValue, ..}
instance Property "Maintenance" Channel where
  type PropertyType "Maintenance" Channel = MaintenanceCreateSettingsProperty
  set newValue Channel {..}
    = Channel {maintenance = Prelude.pure newValue, ..}
instance Property "Name" Channel where
  type PropertyType "Name" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {name = Prelude.pure newValue, ..}
instance Property "RoleArn" Channel where
  type PropertyType "RoleArn" Channel = Value Prelude.Text
  set newValue Channel {..}
    = Channel {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" Channel where
  type PropertyType "Tags" Channel = JSON.Object
  set newValue Channel {..}
    = Channel {tags = Prelude.pure newValue, ..}
instance Property "Vpc" Channel where
  type PropertyType "Vpc" Channel = VpcOutputSettingsProperty
  set newValue Channel {..}
    = Channel {vpc = Prelude.pure newValue, ..}