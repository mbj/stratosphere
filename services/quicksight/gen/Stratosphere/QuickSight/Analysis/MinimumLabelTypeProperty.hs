module Stratosphere.QuickSight.Analysis.MinimumLabelTypeProperty (
        MinimumLabelTypeProperty(..), mkMinimumLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MinimumLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-minimumlabeltype.html>
    MinimumLabelTypeProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-minimumlabeltype.html#cfn-quicksight-analysis-minimumlabeltype-visibility>
                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMinimumLabelTypeProperty :: MinimumLabelTypeProperty
mkMinimumLabelTypeProperty
  = MinimumLabelTypeProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties MinimumLabelTypeProperty where
  toResourceProperties MinimumLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.MinimumLabelType",
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
  type PropertyType "Visibility" MinimumLabelTypeProperty = Value Prelude.Text
  set newValue MinimumLabelTypeProperty {..}
    = MinimumLabelTypeProperty {visibility = Prelude.pure newValue, ..}