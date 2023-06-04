module Stratosphere.QuickSight.Analysis.DonutCenterOptionsProperty (
        DonutCenterOptionsProperty(..), mkDonutCenterOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DonutCenterOptionsProperty
  = DonutCenterOptionsProperty {labelVisibility :: (Prelude.Maybe (Value Prelude.Text))}
mkDonutCenterOptionsProperty :: DonutCenterOptionsProperty
mkDonutCenterOptionsProperty
  = DonutCenterOptionsProperty {labelVisibility = Prelude.Nothing}
instance ToResourceProperties DonutCenterOptionsProperty where
  toResourceProperties DonutCenterOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DonutCenterOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LabelVisibility" Prelude.<$> labelVisibility])}
instance JSON.ToJSON DonutCenterOptionsProperty where
  toJSON DonutCenterOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LabelVisibility" Prelude.<$> labelVisibility]))
instance Property "LabelVisibility" DonutCenterOptionsProperty where
  type PropertyType "LabelVisibility" DonutCenterOptionsProperty = Value Prelude.Text
  set newValue DonutCenterOptionsProperty {}
    = DonutCenterOptionsProperty
        {labelVisibility = Prelude.pure newValue, ..}