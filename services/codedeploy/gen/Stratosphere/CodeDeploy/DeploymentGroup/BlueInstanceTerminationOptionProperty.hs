module Stratosphere.CodeDeploy.DeploymentGroup.BlueInstanceTerminationOptionProperty (
        BlueInstanceTerminationOptionProperty(..),
        mkBlueInstanceTerminationOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlueInstanceTerminationOptionProperty
  = BlueInstanceTerminationOptionProperty {action :: (Prelude.Maybe (Value Prelude.Text)),
                                           terminationWaitTimeInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
mkBlueInstanceTerminationOptionProperty ::
  BlueInstanceTerminationOptionProperty
mkBlueInstanceTerminationOptionProperty
  = BlueInstanceTerminationOptionProperty
      {action = Prelude.Nothing,
       terminationWaitTimeInMinutes = Prelude.Nothing}
instance ToResourceProperties BlueInstanceTerminationOptionProperty where
  toResourceProperties BlueInstanceTerminationOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.BlueInstanceTerminationOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "TerminationWaitTimeInMinutes"
                              Prelude.<$> terminationWaitTimeInMinutes])}
instance JSON.ToJSON BlueInstanceTerminationOptionProperty where
  toJSON BlueInstanceTerminationOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "TerminationWaitTimeInMinutes"
                 Prelude.<$> terminationWaitTimeInMinutes]))
instance Property "Action" BlueInstanceTerminationOptionProperty where
  type PropertyType "Action" BlueInstanceTerminationOptionProperty = Value Prelude.Text
  set newValue BlueInstanceTerminationOptionProperty {..}
    = BlueInstanceTerminationOptionProperty
        {action = Prelude.pure newValue, ..}
instance Property "TerminationWaitTimeInMinutes" BlueInstanceTerminationOptionProperty where
  type PropertyType "TerminationWaitTimeInMinutes" BlueInstanceTerminationOptionProperty = Value Prelude.Integer
  set newValue BlueInstanceTerminationOptionProperty {..}
    = BlueInstanceTerminationOptionProperty
        {terminationWaitTimeInMinutes = Prelude.pure newValue, ..}