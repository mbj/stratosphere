module Stratosphere.Batch.JobDefinition.NodeRangePropertyProperty (
        module Exports, NodeRangePropertyProperty(..),
        mkNodeRangePropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ContainerPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EcsPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeRangePropertyProperty
  = NodeRangePropertyProperty {container :: (Prelude.Maybe ContainerPropertiesProperty),
                               ecsProperties :: (Prelude.Maybe EcsPropertiesProperty),
                               instanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                               targetNodes :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeRangePropertyProperty ::
  Value Prelude.Text -> NodeRangePropertyProperty
mkNodeRangePropertyProperty targetNodes
  = NodeRangePropertyProperty
      {targetNodes = targetNodes, container = Prelude.Nothing,
       ecsProperties = Prelude.Nothing, instanceTypes = Prelude.Nothing}
instance ToResourceProperties NodeRangePropertyProperty where
  toResourceProperties NodeRangePropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.NodeRangeProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetNodes" JSON..= targetNodes]
                           (Prelude.catMaybes
                              [(JSON..=) "Container" Prelude.<$> container,
                               (JSON..=) "EcsProperties" Prelude.<$> ecsProperties,
                               (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes]))}
instance JSON.ToJSON NodeRangePropertyProperty where
  toJSON NodeRangePropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetNodes" JSON..= targetNodes]
              (Prelude.catMaybes
                 [(JSON..=) "Container" Prelude.<$> container,
                  (JSON..=) "EcsProperties" Prelude.<$> ecsProperties,
                  (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes])))
instance Property "Container" NodeRangePropertyProperty where
  type PropertyType "Container" NodeRangePropertyProperty = ContainerPropertiesProperty
  set newValue NodeRangePropertyProperty {..}
    = NodeRangePropertyProperty {container = Prelude.pure newValue, ..}
instance Property "EcsProperties" NodeRangePropertyProperty where
  type PropertyType "EcsProperties" NodeRangePropertyProperty = EcsPropertiesProperty
  set newValue NodeRangePropertyProperty {..}
    = NodeRangePropertyProperty
        {ecsProperties = Prelude.pure newValue, ..}
instance Property "InstanceTypes" NodeRangePropertyProperty where
  type PropertyType "InstanceTypes" NodeRangePropertyProperty = ValueList Prelude.Text
  set newValue NodeRangePropertyProperty {..}
    = NodeRangePropertyProperty
        {instanceTypes = Prelude.pure newValue, ..}
instance Property "TargetNodes" NodeRangePropertyProperty where
  type PropertyType "TargetNodes" NodeRangePropertyProperty = Value Prelude.Text
  set newValue NodeRangePropertyProperty {..}
    = NodeRangePropertyProperty {targetNodes = newValue, ..}