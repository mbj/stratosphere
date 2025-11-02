module Stratosphere.QuickSight.Theme.FontProperty (
        FontProperty(..), mkFontProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FontProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-font.html>
    FontProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-font.html#cfn-quicksight-theme-font-fontfamily>
                  fontFamily :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFontProperty :: FontProperty
mkFontProperty
  = FontProperty
      {haddock_workaround_ = (), fontFamily = Prelude.Nothing}
instance ToResourceProperties FontProperty where
  toResourceProperties FontProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.Font",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FontFamily" Prelude.<$> fontFamily])}
instance JSON.ToJSON FontProperty where
  toJSON FontProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FontFamily" Prelude.<$> fontFamily]))
instance Property "FontFamily" FontProperty where
  type PropertyType "FontFamily" FontProperty = Value Prelude.Text
  set newValue FontProperty {..}
    = FontProperty {fontFamily = Prelude.pure newValue, ..}