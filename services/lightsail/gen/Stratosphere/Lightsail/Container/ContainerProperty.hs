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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-container.html>
    ContainerProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-container.html#cfn-lightsail-container-container-command>
                       command :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-container.html#cfn-lightsail-container-container-containername>
                       containerName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-container.html#cfn-lightsail-container-container-environment>
                       environment :: (Prelude.Maybe [EnvironmentVariableProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-container.html#cfn-lightsail-container-container-image>
                       image :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-container.html#cfn-lightsail-container-container-ports>
                       ports :: (Prelude.Maybe [PortInfoProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerProperty :: ContainerProperty
mkContainerProperty
  = ContainerProperty
      {haddock_workaround_ = (), command = Prelude.Nothing,
       containerName = Prelude.Nothing, environment = Prelude.Nothing,
       image = Prelude.Nothing, ports = Prelude.Nothing}
instance ToResourceProperties ContainerProperty where
  toResourceProperties ContainerProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.Container",
         supportsTags = Prelude.False,
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
  type PropertyType "Command" ContainerProperty = ValueList Prelude.Text
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