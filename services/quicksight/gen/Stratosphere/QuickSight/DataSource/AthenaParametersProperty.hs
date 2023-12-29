module Stratosphere.QuickSight.DataSource.AthenaParametersProperty (
        AthenaParametersProperty(..), mkAthenaParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AthenaParametersProperty
  = AthenaParametersProperty {roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                              workGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAthenaParametersProperty :: AthenaParametersProperty
mkAthenaParametersProperty
  = AthenaParametersProperty
      {roleArn = Prelude.Nothing, workGroup = Prelude.Nothing}
instance ToResourceProperties AthenaParametersProperty where
  toResourceProperties AthenaParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AthenaParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "WorkGroup" Prelude.<$> workGroup])}
instance JSON.ToJSON AthenaParametersProperty where
  toJSON AthenaParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "WorkGroup" Prelude.<$> workGroup]))
instance Property "RoleArn" AthenaParametersProperty where
  type PropertyType "RoleArn" AthenaParametersProperty = Value Prelude.Text
  set newValue AthenaParametersProperty {..}
    = AthenaParametersProperty {roleArn = Prelude.pure newValue, ..}
instance Property "WorkGroup" AthenaParametersProperty where
  type PropertyType "WorkGroup" AthenaParametersProperty = Value Prelude.Text
  set newValue AthenaParametersProperty {..}
    = AthenaParametersProperty {workGroup = Prelude.pure newValue, ..}