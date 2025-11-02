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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-imageresponsecard.html>
    ImageResponseCardProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-imageresponsecard.html#cfn-lex-bot-imageresponsecard-buttons>
                               buttons :: (Prelude.Maybe [ButtonProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-imageresponsecard.html#cfn-lex-bot-imageresponsecard-imageurl>
                               imageUrl :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-imageresponsecard.html#cfn-lex-bot-imageresponsecard-subtitle>
                               subtitle :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-imageresponsecard.html#cfn-lex-bot-imageresponsecard-title>
                               title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageResponseCardProperty ::
  Value Prelude.Text -> ImageResponseCardProperty
mkImageResponseCardProperty title
  = ImageResponseCardProperty
      {haddock_workaround_ = (), title = title,
       buttons = Prelude.Nothing, imageUrl = Prelude.Nothing,
       subtitle = Prelude.Nothing}
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