module Stratosphere.QuickSight.Template.LoadingAnimationProperty (
        LoadingAnimationProperty(..), mkLoadingAnimationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data LoadingAnimationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-loadinganimation.html>
    LoadingAnimationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-loadinganimation.html#cfn-quicksight-template-loadinganimation-visibility>
                              visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadingAnimationProperty :: LoadingAnimationProperty
mkLoadingAnimationProperty
  = LoadingAnimationProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties LoadingAnimationProperty where
  toResourceProperties LoadingAnimationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LoadingAnimation",
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
  type PropertyType "Visibility" LoadingAnimationProperty = JSON.Object
  set newValue LoadingAnimationProperty {..}
    = LoadingAnimationProperty {visibility = Prelude.pure newValue, ..}