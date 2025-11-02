module Stratosphere.ECS.TaskDefinition.UlimitProperty (
        UlimitProperty(..), mkUlimitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UlimitProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-ulimit.html>
    UlimitProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-ulimit.html#cfn-ecs-taskdefinition-ulimit-hardlimit>
                    hardLimit :: (Value Prelude.Integer),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-ulimit.html#cfn-ecs-taskdefinition-ulimit-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-ulimit.html#cfn-ecs-taskdefinition-ulimit-softlimit>
                    softLimit :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUlimitProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> Value Prelude.Integer -> UlimitProperty
mkUlimitProperty hardLimit name softLimit
  = UlimitProperty
      {haddock_workaround_ = (), hardLimit = hardLimit, name = name,
       softLimit = softLimit}
instance ToResourceProperties UlimitProperty where
  toResourceProperties UlimitProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.Ulimit",
         supportsTags = Prelude.False,
         properties = ["HardLimit" JSON..= hardLimit, "Name" JSON..= name,
                       "SoftLimit" JSON..= softLimit]}
instance JSON.ToJSON UlimitProperty where
  toJSON UlimitProperty {..}
    = JSON.object
        ["HardLimit" JSON..= hardLimit, "Name" JSON..= name,
         "SoftLimit" JSON..= softLimit]
instance Property "HardLimit" UlimitProperty where
  type PropertyType "HardLimit" UlimitProperty = Value Prelude.Integer
  set newValue UlimitProperty {..}
    = UlimitProperty {hardLimit = newValue, ..}
instance Property "Name" UlimitProperty where
  type PropertyType "Name" UlimitProperty = Value Prelude.Text
  set newValue UlimitProperty {..}
    = UlimitProperty {name = newValue, ..}
instance Property "SoftLimit" UlimitProperty where
  type PropertyType "SoftLimit" UlimitProperty = Value Prelude.Integer
  set newValue UlimitProperty {..}
    = UlimitProperty {softLimit = newValue, ..}