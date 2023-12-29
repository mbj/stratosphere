module Stratosphere.QuickSight.Dashboard.ProgressBarOptionsProperty (
        ProgressBarOptionsProperty(..), mkProgressBarOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProgressBarOptionsProperty
  = ProgressBarOptionsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProgressBarOptionsProperty :: ProgressBarOptionsProperty
mkProgressBarOptionsProperty
  = ProgressBarOptionsProperty {visibility = Prelude.Nothing}
instance ToResourceProperties ProgressBarOptionsProperty where
  toResourceProperties ProgressBarOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ProgressBarOptions",
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
  type PropertyType "Visibility" ProgressBarOptionsProperty = Value Prelude.Text
  set newValue ProgressBarOptionsProperty {}
    = ProgressBarOptionsProperty
        {visibility = Prelude.pure newValue, ..}