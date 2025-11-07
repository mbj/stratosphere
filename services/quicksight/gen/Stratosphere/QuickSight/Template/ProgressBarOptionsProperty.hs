module Stratosphere.QuickSight.Template.ProgressBarOptionsProperty (
        ProgressBarOptionsProperty(..), mkProgressBarOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ProgressBarOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-progressbaroptions.html>
    ProgressBarOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-progressbaroptions.html#cfn-quicksight-template-progressbaroptions-visibility>
                                visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProgressBarOptionsProperty :: ProgressBarOptionsProperty
mkProgressBarOptionsProperty
  = ProgressBarOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties ProgressBarOptionsProperty where
  toResourceProperties ProgressBarOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ProgressBarOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON ProgressBarOptionsProperty where
  toJSON ProgressBarOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" ProgressBarOptionsProperty where
  type PropertyType "Visibility" ProgressBarOptionsProperty = JSON.Object
  set newValue ProgressBarOptionsProperty {..}
    = ProgressBarOptionsProperty
        {visibility = Prelude.pure newValue, ..}