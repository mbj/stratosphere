module Stratosphere.MediaLive.Channel.CaptionDescriptionProperty (
        module Exports, CaptionDescriptionProperty(..),
        mkCaptionDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CaptionDestinationSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptionDescriptionProperty
  = CaptionDescriptionProperty {accessibility :: (Prelude.Maybe (Value Prelude.Text)),
                                captionSelectorName :: (Prelude.Maybe (Value Prelude.Text)),
                                destinationSettings :: (Prelude.Maybe CaptionDestinationSettingsProperty),
                                languageCode :: (Prelude.Maybe (Value Prelude.Text)),
                                languageDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptionDescriptionProperty :: CaptionDescriptionProperty
mkCaptionDescriptionProperty
  = CaptionDescriptionProperty
      {accessibility = Prelude.Nothing,
       captionSelectorName = Prelude.Nothing,
       destinationSettings = Prelude.Nothing,
       languageCode = Prelude.Nothing,
       languageDescription = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties CaptionDescriptionProperty where
  toResourceProperties CaptionDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CaptionDescription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Accessibility" Prelude.<$> accessibility,
                            (JSON..=) "CaptionSelectorName" Prelude.<$> captionSelectorName,
                            (JSON..=) "DestinationSettings" Prelude.<$> destinationSettings,
                            (JSON..=) "LanguageCode" Prelude.<$> languageCode,
                            (JSON..=) "LanguageDescription" Prelude.<$> languageDescription,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON CaptionDescriptionProperty where
  toJSON CaptionDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Accessibility" Prelude.<$> accessibility,
               (JSON..=) "CaptionSelectorName" Prelude.<$> captionSelectorName,
               (JSON..=) "DestinationSettings" Prelude.<$> destinationSettings,
               (JSON..=) "LanguageCode" Prelude.<$> languageCode,
               (JSON..=) "LanguageDescription" Prelude.<$> languageDescription,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Accessibility" CaptionDescriptionProperty where
  type PropertyType "Accessibility" CaptionDescriptionProperty = Value Prelude.Text
  set newValue CaptionDescriptionProperty {..}
    = CaptionDescriptionProperty
        {accessibility = Prelude.pure newValue, ..}
instance Property "CaptionSelectorName" CaptionDescriptionProperty where
  type PropertyType "CaptionSelectorName" CaptionDescriptionProperty = Value Prelude.Text
  set newValue CaptionDescriptionProperty {..}
    = CaptionDescriptionProperty
        {captionSelectorName = Prelude.pure newValue, ..}
instance Property "DestinationSettings" CaptionDescriptionProperty where
  type PropertyType "DestinationSettings" CaptionDescriptionProperty = CaptionDestinationSettingsProperty
  set newValue CaptionDescriptionProperty {..}
    = CaptionDescriptionProperty
        {destinationSettings = Prelude.pure newValue, ..}
instance Property "LanguageCode" CaptionDescriptionProperty where
  type PropertyType "LanguageCode" CaptionDescriptionProperty = Value Prelude.Text
  set newValue CaptionDescriptionProperty {..}
    = CaptionDescriptionProperty
        {languageCode = Prelude.pure newValue, ..}
instance Property "LanguageDescription" CaptionDescriptionProperty where
  type PropertyType "LanguageDescription" CaptionDescriptionProperty = Value Prelude.Text
  set newValue CaptionDescriptionProperty {..}
    = CaptionDescriptionProperty
        {languageDescription = Prelude.pure newValue, ..}
instance Property "Name" CaptionDescriptionProperty where
  type PropertyType "Name" CaptionDescriptionProperty = Value Prelude.Text
  set newValue CaptionDescriptionProperty {..}
    = CaptionDescriptionProperty {name = Prelude.pure newValue, ..}