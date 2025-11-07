module Stratosphere.QuickSight.Template.FontSizeProperty (
        FontSizeProperty(..), mkFontSizeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FontSizeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontsize.html>
    FontSizeProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontsize.html#cfn-quicksight-template-fontsize-absolute>
                      absolute :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fontsize.html#cfn-quicksight-template-fontsize-relative>
                      relative :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFontSizeProperty :: FontSizeProperty
mkFontSizeProperty
  = FontSizeProperty
      {haddock_workaround_ = (), absolute = Prelude.Nothing,
       relative = Prelude.Nothing}
instance ToResourceProperties FontSizeProperty where
  toResourceProperties FontSizeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FontSize",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Absolute" Prelude.<$> absolute,
                            (JSON..=) "Relative" Prelude.<$> relative])}
instance JSON.ToJSON FontSizeProperty where
  toJSON FontSizeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Absolute" Prelude.<$> absolute,
               (JSON..=) "Relative" Prelude.<$> relative]))
instance Property "Absolute" FontSizeProperty where
  type PropertyType "Absolute" FontSizeProperty = Value Prelude.Text
  set newValue FontSizeProperty {..}
    = FontSizeProperty {absolute = Prelude.pure newValue, ..}
instance Property "Relative" FontSizeProperty where
  type PropertyType "Relative" FontSizeProperty = Value Prelude.Text
  set newValue FontSizeProperty {..}
    = FontSizeProperty {relative = Prelude.pure newValue, ..}