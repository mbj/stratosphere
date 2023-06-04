module Stratosphere.QuickSight.Dashboard.LoadingAnimationProperty (
        LoadingAnimationProperty(..), mkLoadingAnimationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadingAnimationProperty
  = LoadingAnimationProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkLoadingAnimationProperty :: LoadingAnimationProperty
mkLoadingAnimationProperty
  = LoadingAnimationProperty {visibility = Prelude.Nothing}
instance ToResourceProperties LoadingAnimationProperty where
  toResourceProperties LoadingAnimationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LoadingAnimation",
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
  set newValue LoadingAnimationProperty {}
    = LoadingAnimationProperty {visibility = Prelude.pure newValue, ..}