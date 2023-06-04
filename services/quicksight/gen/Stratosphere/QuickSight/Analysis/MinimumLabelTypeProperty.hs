module Stratosphere.QuickSight.Analysis.MinimumLabelTypeProperty (
        MinimumLabelTypeProperty(..), mkMinimumLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MinimumLabelTypeProperty
  = MinimumLabelTypeProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkMinimumLabelTypeProperty :: MinimumLabelTypeProperty
mkMinimumLabelTypeProperty
  = MinimumLabelTypeProperty {visibility = Prelude.Nothing}
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
  set newValue MinimumLabelTypeProperty {}
    = MinimumLabelTypeProperty {visibility = Prelude.pure newValue, ..}