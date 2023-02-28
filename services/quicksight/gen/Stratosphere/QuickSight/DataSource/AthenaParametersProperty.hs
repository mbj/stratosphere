module Stratosphere.QuickSight.DataSource.AthenaParametersProperty (
        AthenaParametersProperty(..), mkAthenaParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AthenaParametersProperty
  = AthenaParametersProperty {workGroup :: (Prelude.Maybe (Value Prelude.Text))}
mkAthenaParametersProperty :: AthenaParametersProperty
mkAthenaParametersProperty
  = AthenaParametersProperty {workGroup = Prelude.Nothing}
instance ToResourceProperties AthenaParametersProperty where
  toResourceProperties AthenaParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AthenaParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "WorkGroup" Prelude.<$> workGroup])}
instance JSON.ToJSON AthenaParametersProperty where
  toJSON AthenaParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "WorkGroup" Prelude.<$> workGroup]))
instance Property "WorkGroup" AthenaParametersProperty where
  type PropertyType "WorkGroup" AthenaParametersProperty = Value Prelude.Text
  set newValue AthenaParametersProperty {}
    = AthenaParametersProperty {workGroup = Prelude.pure newValue, ..}