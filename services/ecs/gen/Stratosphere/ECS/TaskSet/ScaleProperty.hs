module Stratosphere.ECS.TaskSet.ScaleProperty (
        ScaleProperty(..), mkScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScaleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html>
    ScaleProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html#cfn-ecs-taskset-scale-unit>
                   unit :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html#cfn-ecs-taskset-scale-value>
                   value :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScaleProperty :: ScaleProperty
mkScaleProperty
  = ScaleProperty
      {haddock_workaround_ = (), unit = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ScaleProperty where
  toResourceProperties ScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet.Scale", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Unit" Prelude.<$> unit,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ScaleProperty where
  toJSON ScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Unit" Prelude.<$> unit,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Unit" ScaleProperty where
  type PropertyType "Unit" ScaleProperty = Value Prelude.Text
  set newValue ScaleProperty {..}
    = ScaleProperty {unit = Prelude.pure newValue, ..}
instance Property "Value" ScaleProperty where
  type PropertyType "Value" ScaleProperty = Value Prelude.Double
  set newValue ScaleProperty {..}
    = ScaleProperty {value = Prelude.pure newValue, ..}