module Stratosphere.GameLift.GameServerGroup.InstanceDefinitionProperty (
        InstanceDefinitionProperty(..), mkInstanceDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinition.html>
    InstanceDefinitionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinition.html#cfn-gamelift-gameservergroup-instancedefinition-instancetype>
                                instanceType :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinition.html#cfn-gamelift-gameservergroup-instancedefinition-weightedcapacity>
                                weightedCapacity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceDefinitionProperty ::
  Value Prelude.Text -> InstanceDefinitionProperty
mkInstanceDefinitionProperty instanceType
  = InstanceDefinitionProperty
      {haddock_workaround_ = (), instanceType = instanceType,
       weightedCapacity = Prelude.Nothing}
instance ToResourceProperties InstanceDefinitionProperty where
  toResourceProperties InstanceDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameServerGroup.InstanceDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity]))}
instance JSON.ToJSON InstanceDefinitionProperty where
  toJSON InstanceDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "WeightedCapacity" Prelude.<$> weightedCapacity])))
instance Property "InstanceType" InstanceDefinitionProperty where
  type PropertyType "InstanceType" InstanceDefinitionProperty = Value Prelude.Text
  set newValue InstanceDefinitionProperty {..}
    = InstanceDefinitionProperty {instanceType = newValue, ..}
instance Property "WeightedCapacity" InstanceDefinitionProperty where
  type PropertyType "WeightedCapacity" InstanceDefinitionProperty = Value Prelude.Text
  set newValue InstanceDefinitionProperty {..}
    = InstanceDefinitionProperty
        {weightedCapacity = Prelude.pure newValue, ..}