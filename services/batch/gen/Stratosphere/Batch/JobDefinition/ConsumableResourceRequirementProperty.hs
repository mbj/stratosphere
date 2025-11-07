module Stratosphere.Batch.JobDefinition.ConsumableResourceRequirementProperty (
        ConsumableResourceRequirementProperty(..),
        mkConsumableResourceRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConsumableResourceRequirementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourcerequirement.html>
    ConsumableResourceRequirementProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourcerequirement.html#cfn-batch-jobdefinition-consumableresourcerequirement-consumableresource>
                                           consumableResource :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourcerequirement.html#cfn-batch-jobdefinition-consumableresourcerequirement-quantity>
                                           quantity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConsumableResourceRequirementProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ConsumableResourceRequirementProperty
mkConsumableResourceRequirementProperty consumableResource quantity
  = ConsumableResourceRequirementProperty
      {haddock_workaround_ = (), consumableResource = consumableResource,
       quantity = quantity}
instance ToResourceProperties ConsumableResourceRequirementProperty where
  toResourceProperties ConsumableResourceRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.ConsumableResourceRequirement",
         supportsTags = Prelude.False,
         properties = ["ConsumableResource" JSON..= consumableResource,
                       "Quantity" JSON..= quantity]}
instance JSON.ToJSON ConsumableResourceRequirementProperty where
  toJSON ConsumableResourceRequirementProperty {..}
    = JSON.object
        ["ConsumableResource" JSON..= consumableResource,
         "Quantity" JSON..= quantity]
instance Property "ConsumableResource" ConsumableResourceRequirementProperty where
  type PropertyType "ConsumableResource" ConsumableResourceRequirementProperty = Value Prelude.Text
  set newValue ConsumableResourceRequirementProperty {..}
    = ConsumableResourceRequirementProperty
        {consumableResource = newValue, ..}
instance Property "Quantity" ConsumableResourceRequirementProperty where
  type PropertyType "Quantity" ConsumableResourceRequirementProperty = Value Prelude.Integer
  set newValue ConsumableResourceRequirementProperty {..}
    = ConsumableResourceRequirementProperty {quantity = newValue, ..}