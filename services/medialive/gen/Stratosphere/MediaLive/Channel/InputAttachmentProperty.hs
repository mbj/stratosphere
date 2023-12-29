module Stratosphere.MediaLive.Channel.InputAttachmentProperty (
        module Exports, InputAttachmentProperty(..),
        mkInputAttachmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AutomaticInputFailoverSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputAttachmentProperty
  = InputAttachmentProperty {automaticInputFailoverSettings :: (Prelude.Maybe AutomaticInputFailoverSettingsProperty),
                             inputAttachmentName :: (Prelude.Maybe (Value Prelude.Text)),
                             inputId :: (Prelude.Maybe (Value Prelude.Text)),
                             inputSettings :: (Prelude.Maybe InputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputAttachmentProperty :: InputAttachmentProperty
mkInputAttachmentProperty
  = InputAttachmentProperty
      {automaticInputFailoverSettings = Prelude.Nothing,
       inputAttachmentName = Prelude.Nothing, inputId = Prelude.Nothing,
       inputSettings = Prelude.Nothing}
instance ToResourceProperties InputAttachmentProperty where
  toResourceProperties InputAttachmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutomaticInputFailoverSettings"
                              Prelude.<$> automaticInputFailoverSettings,
                            (JSON..=) "InputAttachmentName" Prelude.<$> inputAttachmentName,
                            (JSON..=) "InputId" Prelude.<$> inputId,
                            (JSON..=) "InputSettings" Prelude.<$> inputSettings])}
instance JSON.ToJSON InputAttachmentProperty where
  toJSON InputAttachmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutomaticInputFailoverSettings"
                 Prelude.<$> automaticInputFailoverSettings,
               (JSON..=) "InputAttachmentName" Prelude.<$> inputAttachmentName,
               (JSON..=) "InputId" Prelude.<$> inputId,
               (JSON..=) "InputSettings" Prelude.<$> inputSettings]))
instance Property "AutomaticInputFailoverSettings" InputAttachmentProperty where
  type PropertyType "AutomaticInputFailoverSettings" InputAttachmentProperty = AutomaticInputFailoverSettingsProperty
  set newValue InputAttachmentProperty {..}
    = InputAttachmentProperty
        {automaticInputFailoverSettings = Prelude.pure newValue, ..}
instance Property "InputAttachmentName" InputAttachmentProperty where
  type PropertyType "InputAttachmentName" InputAttachmentProperty = Value Prelude.Text
  set newValue InputAttachmentProperty {..}
    = InputAttachmentProperty
        {inputAttachmentName = Prelude.pure newValue, ..}
instance Property "InputId" InputAttachmentProperty where
  type PropertyType "InputId" InputAttachmentProperty = Value Prelude.Text
  set newValue InputAttachmentProperty {..}
    = InputAttachmentProperty {inputId = Prelude.pure newValue, ..}
instance Property "InputSettings" InputAttachmentProperty where
  type PropertyType "InputSettings" InputAttachmentProperty = InputSettingsProperty
  set newValue InputAttachmentProperty {..}
    = InputAttachmentProperty
        {inputSettings = Prelude.pure newValue, ..}