module Stratosphere.QuickSight.Template.MinimumLabelTypeProperty (
        MinimumLabelTypeProperty(..), mkMinimumLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data MinimumLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-minimumlabeltype.html>
    MinimumLabelTypeProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-minimumlabeltype.html#cfn-quicksight-template-minimumlabeltype-visibility>
                              visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMinimumLabelTypeProperty :: MinimumLabelTypeProperty
mkMinimumLabelTypeProperty
  = MinimumLabelTypeProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties MinimumLabelTypeProperty where
  toResourceProperties MinimumLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.MinimumLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON MinimumLabelTypeProperty where
  toJSON MinimumLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" MinimumLabelTypeProperty where
  type PropertyType "Visibility" MinimumLabelTypeProperty = JSON.Object
  set newValue MinimumLabelTypeProperty {..}
    = MinimumLabelTypeProperty {visibility = Prelude.pure newValue, ..}