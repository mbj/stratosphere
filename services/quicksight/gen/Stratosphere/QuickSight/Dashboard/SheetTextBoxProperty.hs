module Stratosphere.QuickSight.Dashboard.SheetTextBoxProperty (
        SheetTextBoxProperty(..), mkSheetTextBoxProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetTextBoxProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sheettextbox.html>
    SheetTextBoxProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sheettextbox.html#cfn-quicksight-dashboard-sheettextbox-content>
                          content :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sheettextbox.html#cfn-quicksight-dashboard-sheettextbox-sheettextboxid>
                          sheetTextBoxId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetTextBoxProperty ::
  Value Prelude.Text -> SheetTextBoxProperty
mkSheetTextBoxProperty sheetTextBoxId
  = SheetTextBoxProperty
      {haddock_workaround_ = (), sheetTextBoxId = sheetTextBoxId,
       content = Prelude.Nothing}
instance ToResourceProperties SheetTextBoxProperty where
  toResourceProperties SheetTextBoxProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SheetTextBox",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SheetTextBoxId" JSON..= sheetTextBoxId]
                           (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content]))}
instance JSON.ToJSON SheetTextBoxProperty where
  toJSON SheetTextBoxProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SheetTextBoxId" JSON..= sheetTextBoxId]
              (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content])))
instance Property "Content" SheetTextBoxProperty where
  type PropertyType "Content" SheetTextBoxProperty = Value Prelude.Text
  set newValue SheetTextBoxProperty {..}
    = SheetTextBoxProperty {content = Prelude.pure newValue, ..}
instance Property "SheetTextBoxId" SheetTextBoxProperty where
  type PropertyType "SheetTextBoxId" SheetTextBoxProperty = Value Prelude.Text
  set newValue SheetTextBoxProperty {..}
    = SheetTextBoxProperty {sheetTextBoxId = newValue, ..}