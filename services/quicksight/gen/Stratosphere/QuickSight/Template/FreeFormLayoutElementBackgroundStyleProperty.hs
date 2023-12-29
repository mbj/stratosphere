module Stratosphere.QuickSight.Template.FreeFormLayoutElementBackgroundStyleProperty (
        FreeFormLayoutElementBackgroundStyleProperty(..),
        mkFreeFormLayoutElementBackgroundStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FreeFormLayoutElementBackgroundStyleProperty
  = FreeFormLayoutElementBackgroundStyleProperty {color :: (Prelude.Maybe (Value Prelude.Text)),
                                                  visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormLayoutElementBackgroundStyleProperty ::
  FreeFormLayoutElementBackgroundStyleProperty
mkFreeFormLayoutElementBackgroundStyleProperty
  = FreeFormLayoutElementBackgroundStyleProperty
      {color = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties FreeFormLayoutElementBackgroundStyleProperty where
  toResourceProperties
    FreeFormLayoutElementBackgroundStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FreeFormLayoutElementBackgroundStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Color" Prelude.<$> color,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON FreeFormLayoutElementBackgroundStyleProperty where
  toJSON FreeFormLayoutElementBackgroundStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Color" Prelude.<$> color,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Color" FreeFormLayoutElementBackgroundStyleProperty where
  type PropertyType "Color" FreeFormLayoutElementBackgroundStyleProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementBackgroundStyleProperty {..}
    = FreeFormLayoutElementBackgroundStyleProperty
        {color = Prelude.pure newValue, ..}
instance Property "Visibility" FreeFormLayoutElementBackgroundStyleProperty where
  type PropertyType "Visibility" FreeFormLayoutElementBackgroundStyleProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementBackgroundStyleProperty {..}
    = FreeFormLayoutElementBackgroundStyleProperty
        {visibility = Prelude.pure newValue, ..}