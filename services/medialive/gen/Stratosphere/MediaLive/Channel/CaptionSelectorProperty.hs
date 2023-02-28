module Stratosphere.MediaLive.Channel.CaptionSelectorProperty (
        module Exports, CaptionSelectorProperty(..),
        mkCaptionSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CaptionSelectorSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptionSelectorProperty
  = CaptionSelectorProperty {languageCode :: (Prelude.Maybe (Value Prelude.Text)),
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             selectorSettings :: (Prelude.Maybe CaptionSelectorSettingsProperty)}
mkCaptionSelectorProperty :: CaptionSelectorProperty
mkCaptionSelectorProperty
  = CaptionSelectorProperty
      {languageCode = Prelude.Nothing, name = Prelude.Nothing,
       selectorSettings = Prelude.Nothing}
instance ToResourceProperties CaptionSelectorProperty where
  toResourceProperties CaptionSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CaptionSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LanguageCode" Prelude.<$> languageCode,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SelectorSettings" Prelude.<$> selectorSettings])}
instance JSON.ToJSON CaptionSelectorProperty where
  toJSON CaptionSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LanguageCode" Prelude.<$> languageCode,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SelectorSettings" Prelude.<$> selectorSettings]))
instance Property "LanguageCode" CaptionSelectorProperty where
  type PropertyType "LanguageCode" CaptionSelectorProperty = Value Prelude.Text
  set newValue CaptionSelectorProperty {..}
    = CaptionSelectorProperty
        {languageCode = Prelude.pure newValue, ..}
instance Property "Name" CaptionSelectorProperty where
  type PropertyType "Name" CaptionSelectorProperty = Value Prelude.Text
  set newValue CaptionSelectorProperty {..}
    = CaptionSelectorProperty {name = Prelude.pure newValue, ..}
instance Property "SelectorSettings" CaptionSelectorProperty where
  type PropertyType "SelectorSettings" CaptionSelectorProperty = CaptionSelectorSettingsProperty
  set newValue CaptionSelectorProperty {..}
    = CaptionSelectorProperty
        {selectorSettings = Prelude.pure newValue, ..}