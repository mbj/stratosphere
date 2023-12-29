module Stratosphere.Lex.Bot.ImageResponseCardProperty (
        module Exports, ImageResponseCardProperty(..),
        mkImageResponseCardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ButtonProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageResponseCardProperty
  = ImageResponseCardProperty {buttons :: (Prelude.Maybe [ButtonProperty]),
                               imageUrl :: (Prelude.Maybe (Value Prelude.Text)),
                               subtitle :: (Prelude.Maybe (Value Prelude.Text)),
                               title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageResponseCardProperty ::
  Value Prelude.Text -> ImageResponseCardProperty
mkImageResponseCardProperty title
  = ImageResponseCardProperty
      {title = title, buttons = Prelude.Nothing,
       imageUrl = Prelude.Nothing, subtitle = Prelude.Nothing}
instance ToResourceProperties ImageResponseCardProperty where
  toResourceProperties ImageResponseCardProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ImageResponseCard",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Buttons" Prelude.<$> buttons,
                               (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle]))}
instance JSON.ToJSON ImageResponseCardProperty where
  toJSON ImageResponseCardProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Buttons" Prelude.<$> buttons,
                  (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle])))
instance Property "Buttons" ImageResponseCardProperty where
  type PropertyType "Buttons" ImageResponseCardProperty = [ButtonProperty]
  set newValue ImageResponseCardProperty {..}
    = ImageResponseCardProperty {buttons = Prelude.pure newValue, ..}
instance Property "ImageUrl" ImageResponseCardProperty where
  type PropertyType "ImageUrl" ImageResponseCardProperty = Value Prelude.Text
  set newValue ImageResponseCardProperty {..}
    = ImageResponseCardProperty {imageUrl = Prelude.pure newValue, ..}
instance Property "Subtitle" ImageResponseCardProperty where
  type PropertyType "Subtitle" ImageResponseCardProperty = Value Prelude.Text
  set newValue ImageResponseCardProperty {..}
    = ImageResponseCardProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" ImageResponseCardProperty where
  type PropertyType "Title" ImageResponseCardProperty = Value Prelude.Text
  set newValue ImageResponseCardProperty {..}
    = ImageResponseCardProperty {title = newValue, ..}