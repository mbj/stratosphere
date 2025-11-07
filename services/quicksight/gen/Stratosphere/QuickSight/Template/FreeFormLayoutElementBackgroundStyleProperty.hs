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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelementbackgroundstyle.html>
    FreeFormLayoutElementBackgroundStyleProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelementbackgroundstyle.html#cfn-quicksight-template-freeformlayoutelementbackgroundstyle-color>
                                                  color :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelementbackgroundstyle.html#cfn-quicksight-template-freeformlayoutelementbackgroundstyle-visibility>
                                                  visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormLayoutElementBackgroundStyleProperty ::
  FreeFormLayoutElementBackgroundStyleProperty
mkFreeFormLayoutElementBackgroundStyleProperty
  = FreeFormLayoutElementBackgroundStyleProperty
      {haddock_workaround_ = (), color = Prelude.Nothing,
       visibility = Prelude.Nothing}
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
  type PropertyType "Visibility" FreeFormLayoutElementBackgroundStyleProperty = JSON.Object
  set newValue FreeFormLayoutElementBackgroundStyleProperty {..}
    = FreeFormLayoutElementBackgroundStyleProperty
        {visibility = Prelude.pure newValue, ..}