module Stratosphere.Lightsail.Container.ContainerServiceDeploymentProperty (
        module Exports, ContainerServiceDeploymentProperty(..),
        mkContainerServiceDeploymentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Container.ContainerProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Container.PublicEndpointProperty as Exports
import Stratosphere.ResourceProperties
data ContainerServiceDeploymentProperty
  = ContainerServiceDeploymentProperty {containers :: (Prelude.Maybe [ContainerProperty]),
                                        publicEndpoint :: (Prelude.Maybe PublicEndpointProperty)}
mkContainerServiceDeploymentProperty ::
  ContainerServiceDeploymentProperty
mkContainerServiceDeploymentProperty
  = ContainerServiceDeploymentProperty
      {containers = Prelude.Nothing, publicEndpoint = Prelude.Nothing}
instance ToResourceProperties ContainerServiceDeploymentProperty where
  toResourceProperties ContainerServiceDeploymentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.ContainerServiceDeployment",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Containers" Prelude.<$> containers,
                            (JSON..=) "PublicEndpoint" Prelude.<$> publicEndpoint])}
instance JSON.ToJSON ContainerServiceDeploymentProperty where
  toJSON ContainerServiceDeploymentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Containers" Prelude.<$> containers,
               (JSON..=) "PublicEndpoint" Prelude.<$> publicEndpoint]))
instance Property "Containers" ContainerServiceDeploymentProperty where
  type PropertyType "Containers" ContainerServiceDeploymentProperty = [ContainerProperty]
  set newValue ContainerServiceDeploymentProperty {..}
    = ContainerServiceDeploymentProperty
        {containers = Prelude.pure newValue, ..}
instance Property "PublicEndpoint" ContainerServiceDeploymentProperty where
  type PropertyType "PublicEndpoint" ContainerServiceDeploymentProperty = PublicEndpointProperty
  set newValue ContainerServiceDeploymentProperty {..}
    = ContainerServiceDeploymentProperty
        {publicEndpoint = Prelude.pure newValue, ..}