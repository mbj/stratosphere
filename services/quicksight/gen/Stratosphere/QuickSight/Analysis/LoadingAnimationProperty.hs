module Stratosphere.QuickSight.Analysis.LoadingAnimationProperty (
        LoadingAnimationProperty(..), mkLoadingAnimationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadingAnimationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-loadinganimation.html>
    LoadingAnimationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-loadinganimation.html#cfn-quicksight-analysis-loadinganimation-visibility>
                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadingAnimationProperty :: LoadingAnimationProperty
mkLoadingAnimationProperty
  = LoadingAnimationProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties LoadingAnimationProperty where
  toResourceProperties LoadingAnimationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LoadingAnimation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON LoadingAnimationProperty where
  toJSON LoadingAnimationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" LoadingAnimationProperty where
  type PropertyType "Visibility" LoadingAnimationProperty = Value Prelude.Text
  set newValue LoadingAnimationProperty {..}
    = LoadingAnimationProperty {visibility = Prelude.pure newValue, ..}