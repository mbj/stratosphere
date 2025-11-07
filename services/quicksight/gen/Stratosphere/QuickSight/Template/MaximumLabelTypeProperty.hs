module Stratosphere.QuickSight.Template.MaximumLabelTypeProperty (
        MaximumLabelTypeProperty(..), mkMaximumLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data MaximumLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-maximumlabeltype.html>
    MaximumLabelTypeProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-maximumlabeltype.html#cfn-quicksight-template-maximumlabeltype-visibility>
                              visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaximumLabelTypeProperty :: MaximumLabelTypeProperty
mkMaximumLabelTypeProperty
  = MaximumLabelTypeProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties MaximumLabelTypeProperty where
  toResourceProperties MaximumLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.MaximumLabelType",
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
  type PropertyType "Visibility" MaximumLabelTypeProperty = JSON.Object
  set newValue MaximumLabelTypeProperty {..}
    = MaximumLabelTypeProperty {visibility = Prelude.pure newValue, ..}