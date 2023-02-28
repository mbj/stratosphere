module Stratosphere.ECS.TaskDefinition.PortMappingProperty (
        PortMappingProperty(..), mkPortMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortMappingProperty
  = PortMappingProperty {appProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                         containerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         containerPortRange :: (Prelude.Maybe (Value Prelude.Text)),
                         hostPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         protocol :: (Prelude.Maybe (Value Prelude.Text))}
mkPortMappingProperty :: PortMappingProperty
mkPortMappingProperty
  = PortMappingProperty
      {appProtocol = Prelude.Nothing, containerPort = Prelude.Nothing,
       containerPortRange = Prelude.Nothing, hostPort = Prelude.Nothing,
       name = Prelude.Nothing, protocol = Prelude.Nothing}
instance ToResourceProperties PortMappingProperty where
  toResourceProperties PortMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.PortMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppProtocol" Prelude.<$> appProtocol,
                            (JSON..=) "ContainerPort" Prelude.<$> containerPort,
                            (JSON..=) "ContainerPortRange" Prelude.<$> containerPortRange,
                            (JSON..=) "HostPort" Prelude.<$> hostPort,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON PortMappingProperty where
  toJSON PortMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppProtocol" Prelude.<$> appProtocol,
               (JSON..=) "ContainerPort" Prelude.<$> containerPort,
               (JSON..=) "ContainerPortRange" Prelude.<$> containerPortRange,
               (JSON..=) "HostPort" Prelude.<$> hostPort,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "AppProtocol" PortMappingProperty where
  type PropertyType "AppProtocol" PortMappingProperty = Value Prelude.Text
  set newValue PortMappingProperty {..}
    = PortMappingProperty {appProtocol = Prelude.pure newValue, ..}
instance Property "ContainerPort" PortMappingProperty where
  type PropertyType "ContainerPort" PortMappingProperty = Value Prelude.Integer
  set newValue PortMappingProperty {..}
    = PortMappingProperty {containerPort = Prelude.pure newValue, ..}
instance Property "ContainerPortRange" PortMappingProperty where
  type PropertyType "ContainerPortRange" PortMappingProperty = Value Prelude.Text
  set newValue PortMappingProperty {..}
    = PortMappingProperty
        {containerPortRange = Prelude.pure newValue, ..}
instance Property "HostPort" PortMappingProperty where
  type PropertyType "HostPort" PortMappingProperty = Value Prelude.Integer
  set newValue PortMappingProperty {..}
    = PortMappingProperty {hostPort = Prelude.pure newValue, ..}
instance Property "Name" PortMappingProperty where
  type PropertyType "Name" PortMappingProperty = Value Prelude.Text
  set newValue PortMappingProperty {..}
    = PortMappingProperty {name = Prelude.pure newValue, ..}
instance Property "Protocol" PortMappingProperty where
  type PropertyType "Protocol" PortMappingProperty = Value Prelude.Text
  set newValue PortMappingProperty {..}
    = PortMappingProperty {protocol = Prelude.pure newValue, ..}