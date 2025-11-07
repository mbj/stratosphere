module Stratosphere.ECS.CapacityProvider.MemoryMiBRequestProperty (
        MemoryMiBRequestProperty(..), mkMemoryMiBRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryMiBRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-memorymibrequest.html>
    MemoryMiBRequestProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-memorymibrequest.html#cfn-ecs-capacityprovider-memorymibrequest-max>
                              max :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-memorymibrequest.html#cfn-ecs-capacityprovider-memorymibrequest-min>
                              min :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryMiBRequestProperty ::
  Value Prelude.Integer -> MemoryMiBRequestProperty
mkMemoryMiBRequestProperty min
  = MemoryMiBRequestProperty
      {haddock_workaround_ = (), min = min, max = Prelude.Nothing}
instance ToResourceProperties MemoryMiBRequestProperty where
  toResourceProperties MemoryMiBRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.MemoryMiBRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Min" JSON..= min]
                           (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max]))}
instance JSON.ToJSON MemoryMiBRequestProperty where
  toJSON MemoryMiBRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Min" JSON..= min]
              (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max])))
instance Property "Max" MemoryMiBRequestProperty where
  type PropertyType "Max" MemoryMiBRequestProperty = Value Prelude.Integer
  set newValue MemoryMiBRequestProperty {..}
    = MemoryMiBRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" MemoryMiBRequestProperty where
  type PropertyType "Min" MemoryMiBRequestProperty = Value Prelude.Integer
  set newValue MemoryMiBRequestProperty {..}
    = MemoryMiBRequestProperty {min = newValue, ..}