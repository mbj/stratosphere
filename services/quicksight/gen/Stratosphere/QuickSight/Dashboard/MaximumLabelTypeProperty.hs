module Stratosphere.QuickSight.Dashboard.MaximumLabelTypeProperty (
        MaximumLabelTypeProperty(..), mkMaximumLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaximumLabelTypeProperty
  = MaximumLabelTypeProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaximumLabelTypeProperty :: MaximumLabelTypeProperty
mkMaximumLabelTypeProperty
  = MaximumLabelTypeProperty {visibility = Prelude.Nothing}
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
  set newValue MaximumLabelTypeProperty {}
    = MaximumLabelTypeProperty {visibility = Prelude.pure newValue, ..}