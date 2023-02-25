module Stratosphere.Lightsail.Container.ContainerProperty (
        module Exports, ContainerProperty(..), mkContainerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Container.EnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Container.PortInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerProperty
  = ContainerProperty {command :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       containerName :: (Prelude.Maybe (Value Prelude.Text)),
                       environment :: (Prelude.Maybe [EnvironmentVariableProperty]),
                       image :: (Prelude.Maybe (Value Prelude.Text)),
                       ports :: (Prelude.Maybe [PortInfoProperty])}
mkContainerProperty :: ContainerProperty
mkContainerProperty
  = ContainerProperty
      {command = Prelude.Nothing, containerName = Prelude.Nothing,
       environment = Prelude.Nothing, image = Prelude.Nothing,
       ports = Prelude.Nothing}
instance ToResourceProperties ContainerProperty where
  toResourceProperties ContainerProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.Container",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Command" Prelude.<$> command,
                            (JSON..=) "ContainerName" Prelude.<$> containerName,
                            (JSON..=) "Environment" Prelude.<$> environment,
                            (JSON..=) "Image" Prelude.<$> image,
                            (JSON..=) "Ports" Prelude.<$> ports])}
instance JSON.ToJSON ContainerProperty where
  toJSON ContainerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Command" Prelude.<$> command,
               (JSON..=) "ContainerName" Prelude.<$> containerName,
               (JSON..=) "Environment" Prelude.<$> environment,
               (JSON..=) "Image" Prelude.<$> image,
               (JSON..=) "Ports" Prelude.<$> ports]))
instance Property "Command" ContainerProperty where
  type PropertyType "Command" ContainerProperty = ValueList (Value Prelude.Text)
  set newValue ContainerProperty {..}
    = ContainerProperty {command = Prelude.pure newValue, ..}
instance Property "ContainerName" ContainerProperty where
  type PropertyType "ContainerName" ContainerProperty = Value Prelude.Text
  set newValue ContainerProperty {..}
    = ContainerProperty {containerName = Prelude.pure newValue, ..}
instance Property "Environment" ContainerProperty where
  type PropertyType "Environment" ContainerProperty = [EnvironmentVariableProperty]
  set newValue ContainerProperty {..}
    = ContainerProperty {environment = Prelude.pure newValue, ..}
instance Property "Image" ContainerProperty where
  type PropertyType "Image" ContainerProperty = Value Prelude.Text
  set newValue ContainerProperty {..}
    = ContainerProperty {image = Prelude.pure newValue, ..}
instance Property "Ports" ContainerProperty where
  type PropertyType "Ports" ContainerProperty = [PortInfoProperty]
  set newValue ContainerProperty {..}
    = ContainerProperty {ports = Prelude.pure newValue, ..}