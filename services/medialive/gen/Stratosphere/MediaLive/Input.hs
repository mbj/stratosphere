module Stratosphere.MediaLive.Input (
        module Exports, Input(..), mkInput
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.InputDestinationRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Input.InputDeviceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Input.InputSourceRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Input.InputVpcRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Input.MediaConnectFlowRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Input.MulticastSettingsCreateRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Input.SrtSettingsRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Input
  = Input {destinations :: (Prelude.Maybe [InputDestinationRequestProperty]),
           inputDevices :: (Prelude.Maybe [InputDeviceSettingsProperty]),
           inputNetworkLocation :: (Prelude.Maybe (Value Prelude.Text)),
           inputSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
           mediaConnectFlows :: (Prelude.Maybe [MediaConnectFlowRequestProperty]),
           multicastSettings :: (Prelude.Maybe MulticastSettingsCreateRequestProperty),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           roleArn :: (Prelude.Maybe (Value Prelude.Text)),
           sources :: (Prelude.Maybe [InputSourceRequestProperty]),
           srtSettings :: (Prelude.Maybe SrtSettingsRequestProperty),
           tags :: (Prelude.Maybe JSON.Object),
           type' :: (Prelude.Maybe (Value Prelude.Text)),
           vpc :: (Prelude.Maybe InputVpcRequestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInput :: Input
mkInput
  = Input
      {destinations = Prelude.Nothing, inputDevices = Prelude.Nothing,
       inputNetworkLocation = Prelude.Nothing,
       inputSecurityGroups = Prelude.Nothing,
       mediaConnectFlows = Prelude.Nothing,
       multicastSettings = Prelude.Nothing, name = Prelude.Nothing,
       roleArn = Prelude.Nothing, sources = Prelude.Nothing,
       srtSettings = Prelude.Nothing, tags = Prelude.Nothing,
       type' = Prelude.Nothing, vpc = Prelude.Nothing}
instance ToResourceProperties Input where
  toResourceProperties Input {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destinations" Prelude.<$> destinations,
                            (JSON..=) "InputDevices" Prelude.<$> inputDevices,
                            (JSON..=) "InputNetworkLocation" Prelude.<$> inputNetworkLocation,
                            (JSON..=) "InputSecurityGroups" Prelude.<$> inputSecurityGroups,
                            (JSON..=) "MediaConnectFlows" Prelude.<$> mediaConnectFlows,
                            (JSON..=) "MulticastSettings" Prelude.<$> multicastSettings,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "Sources" Prelude.<$> sources,
                            (JSON..=) "SrtSettings" Prelude.<$> srtSettings,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Vpc" Prelude.<$> vpc])}
instance JSON.ToJSON Input where
  toJSON Input {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destinations" Prelude.<$> destinations,
               (JSON..=) "InputDevices" Prelude.<$> inputDevices,
               (JSON..=) "InputNetworkLocation" Prelude.<$> inputNetworkLocation,
               (JSON..=) "InputSecurityGroups" Prelude.<$> inputSecurityGroups,
               (JSON..=) "MediaConnectFlows" Prelude.<$> mediaConnectFlows,
               (JSON..=) "MulticastSettings" Prelude.<$> multicastSettings,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "Sources" Prelude.<$> sources,
               (JSON..=) "SrtSettings" Prelude.<$> srtSettings,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Vpc" Prelude.<$> vpc]))
instance Property "Destinations" Input where
  type PropertyType "Destinations" Input = [InputDestinationRequestProperty]
  set newValue Input {..}
    = Input {destinations = Prelude.pure newValue, ..}
instance Property "InputDevices" Input where
  type PropertyType "InputDevices" Input = [InputDeviceSettingsProperty]
  set newValue Input {..}
    = Input {inputDevices = Prelude.pure newValue, ..}
instance Property "InputNetworkLocation" Input where
  type PropertyType "InputNetworkLocation" Input = Value Prelude.Text
  set newValue Input {..}
    = Input {inputNetworkLocation = Prelude.pure newValue, ..}
instance Property "InputSecurityGroups" Input where
  type PropertyType "InputSecurityGroups" Input = ValueList Prelude.Text
  set newValue Input {..}
    = Input {inputSecurityGroups = Prelude.pure newValue, ..}
instance Property "MediaConnectFlows" Input where
  type PropertyType "MediaConnectFlows" Input = [MediaConnectFlowRequestProperty]
  set newValue Input {..}
    = Input {mediaConnectFlows = Prelude.pure newValue, ..}
instance Property "MulticastSettings" Input where
  type PropertyType "MulticastSettings" Input = MulticastSettingsCreateRequestProperty
  set newValue Input {..}
    = Input {multicastSettings = Prelude.pure newValue, ..}
instance Property "Name" Input where
  type PropertyType "Name" Input = Value Prelude.Text
  set newValue Input {..} = Input {name = Prelude.pure newValue, ..}
instance Property "RoleArn" Input where
  type PropertyType "RoleArn" Input = Value Prelude.Text
  set newValue Input {..}
    = Input {roleArn = Prelude.pure newValue, ..}
instance Property "Sources" Input where
  type PropertyType "Sources" Input = [InputSourceRequestProperty]
  set newValue Input {..}
    = Input {sources = Prelude.pure newValue, ..}
instance Property "SrtSettings" Input where
  type PropertyType "SrtSettings" Input = SrtSettingsRequestProperty
  set newValue Input {..}
    = Input {srtSettings = Prelude.pure newValue, ..}
instance Property "Tags" Input where
  type PropertyType "Tags" Input = JSON.Object
  set newValue Input {..} = Input {tags = Prelude.pure newValue, ..}
instance Property "Type" Input where
  type PropertyType "Type" Input = Value Prelude.Text
  set newValue Input {..} = Input {type' = Prelude.pure newValue, ..}
instance Property "Vpc" Input where
  type PropertyType "Vpc" Input = InputVpcRequestProperty
  set newValue Input {..} = Input {vpc = Prelude.pure newValue, ..}