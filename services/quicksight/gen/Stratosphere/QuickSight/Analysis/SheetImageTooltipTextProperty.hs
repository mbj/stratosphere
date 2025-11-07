module Stratosphere.QuickSight.Analysis.SheetImageTooltipTextProperty (
        SheetImageTooltipTextProperty(..), mkSheetImageTooltipTextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetImageTooltipTextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimagetooltiptext.html>
    SheetImageTooltipTextProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimagetooltiptext.html#cfn-quicksight-analysis-sheetimagetooltiptext-plaintext>
                                   plainText :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetImageTooltipTextProperty :: SheetImageTooltipTextProperty
mkSheetImageTooltipTextProperty
  = SheetImageTooltipTextProperty
      {haddock_workaround_ = (), plainText = Prelude.Nothing}
instance ToResourceProperties SheetImageTooltipTextProperty where
  toResourceProperties SheetImageTooltipTextProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetImageTooltipText",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "PlainText" Prelude.<$> plainText])}
instance JSON.ToJSON SheetImageTooltipTextProperty where
  toJSON SheetImageTooltipTextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "PlainText" Prelude.<$> plainText]))
instance Property "PlainText" SheetImageTooltipTextProperty where
  type PropertyType "PlainText" SheetImageTooltipTextProperty = Value Prelude.Text
  set newValue SheetImageTooltipTextProperty {..}
    = SheetImageTooltipTextProperty
        {plainText = Prelude.pure newValue, ..}