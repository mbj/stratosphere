module Stratosphere.QuickSight.Dashboard.MaximumLabelTypeProperty (
        MaximumLabelTypeProperty(..), mkMaximumLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaximumLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-maximumlabeltype.html>
    MaximumLabelTypeProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-maximumlabeltype.html#cfn-quicksight-dashboard-maximumlabeltype-visibility>
                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaximumLabelTypeProperty :: MaximumLabelTypeProperty
mkMaximumLabelTypeProperty
  = MaximumLabelTypeProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties MaximumLabelTypeProperty where
  toResourceProperties MaximumLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.MaximumLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON MaximumLabelTypeProperty where
  toJSON MaximumLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" MaximumLabelTypeProperty where
  type PropertyType "Visibility" MaximumLabelTypeProperty = Value Prelude.Text
  set newValue MaximumLabelTypeProperty {..}
    = MaximumLabelTypeProperty {visibility = Prelude.pure newValue, ..}