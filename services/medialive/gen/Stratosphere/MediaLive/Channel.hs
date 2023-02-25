module Stratosphere.MediaLive.Channel (
        module Exports, Channel(..), mkChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CdiInputSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EncoderSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputAttachmentProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VpcOutputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Channel
  = Channel {cdiInputSpecification :: (Prelude.Maybe CdiInputSpecificationProperty),
             channelClass :: (Prelude.Maybe (Value Prelude.Text)),
             destinations :: (Prelude.Maybe [OutputDestinationProperty]),
             encoderSettings :: (Prelude.Maybe EncoderSettingsProperty),
             inputAttachments :: (Prelude.Maybe [InputAttachmentProperty]),
             inputSpecification :: (Prelude.Maybe InputSpecificationProperty),
             logLevel :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             roleArn :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe JSON.Object),
             vpc :: (Prelude.Maybe VpcOutputSettingsProperty)}
mkChannel :: Channel
mkChannel
  = Channel
      {cdiInputSpecification = Prelude.Nothing,
       channelClass = Prelude.Nothing, destinations = Prelude.Nothing,
       encoderSettings = Prelude.Nothing,
       inputAttachments = Prelude.Nothing,
       inputSpecification = Prelude.Nothing, logLevel = Prelude.Nothing,
       name = Prelude.Nothing, roleArn = Prelude.Nothing,
       tags = Prelude.Nothing, vpc = Prelude.Nothing}
instance ToResourceProperties Channel where
  toResourceProperties Channel {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CdiInputSpecification"
                              Prelude.<$> cdiInputSpecification,
                            (JSON..=) "ChannelClass" Prelude.<$> channelClass,
                            (JSON..=) "Destinations" Prelude.<$> destinations,
                            (JSON..=) "EncoderSettings" Prelude.<$> encoderSettings,
                            (JSON..=) "InputAttachments" Prelude.<$> inputAttachments,
                            (JSON..=) "InputSpecification" Prelude.<$> inputSpecification,
                            (JSON..=) "LogLevel" Prelude.<$> logLevel,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Vpc" Prelude.<$> vpc])}
instance JSON.ToJSON Channel where
  toJSON Channel {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CdiInputSpecification"
                 Prelude.<$> cdiInputSpecification,
               (JSON..=) "ChannelClass" Prelude.<$> channelClass,
               (JSON..=) "Destinations" Prelude.<$> destinations,
               (JSON..=) "EncoderSettings" Prelude.<$> encoderSettings,
               (JSON..=) "InputAttachments" Prelude.<$> inputAttachments,
               (JSON..=) "InputSpecification" Prelude.<$> inputSpecification,
               (JSON..=) "LogLevel" Prelude.<$> logLevel,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Vpc" Prelude.<$> vpc]))
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