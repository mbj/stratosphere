module Stratosphere.QuickSight.Dashboard.FreeFormLayoutElementBorderStyleProperty (
        FreeFormLayoutElementBorderStyleProperty(..),
        mkFreeFormLayoutElementBorderStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FreeFormLayoutElementBorderStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-freeformlayoutelementborderstyle.html>
    FreeFormLayoutElementBorderStyleProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-freeformlayoutelementborderstyle.html#cfn-quicksight-dashboard-freeformlayoutelementborderstyle-color>
                                              color :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-freeformlayoutelementborderstyle.html#cfn-quicksight-dashboard-freeformlayoutelementborderstyle-visibility>
                                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormLayoutElementBorderStyleProperty ::
  FreeFormLayoutElementBorderStyleProperty
mkFreeFormLayoutElementBorderStyleProperty
  = FreeFormLayoutElementBorderStyleProperty
      {haddock_workaround_ = (), color = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties FreeFormLayoutElementBorderStyleProperty where
  toResourceProperties FreeFormLayoutElementBorderStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FreeFormLayoutElementBorderStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Color" Prelude.<$> color,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON FreeFormLayoutElementBorderStyleProperty where
  toJSON FreeFormLayoutElementBorderStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Color" Prelude.<$> color,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Color" FreeFormLayoutElementBorderStyleProperty where
  type PropertyType "Color" FreeFormLayoutElementBorderStyleProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementBorderStyleProperty {..}
    = FreeFormLayoutElementBorderStyleProperty
        {color = Prelude.pure newValue, ..}
instance Property "Visibility" FreeFormLayoutElementBorderStyleProperty where
  type PropertyType "Visibility" FreeFormLayoutElementBorderStyleProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementBorderStyleProperty {..}
    = FreeFormLayoutElementBorderStyleProperty
        {visibility = Prelude.pure newValue, ..}