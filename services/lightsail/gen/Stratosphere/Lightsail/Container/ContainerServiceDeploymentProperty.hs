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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-containerservicedeployment.html>
    ContainerServiceDeploymentProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-containerservicedeployment.html#cfn-lightsail-container-containerservicedeployment-containers>
                                        containers :: (Prelude.Maybe [ContainerProperty]),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-containerservicedeployment.html#cfn-lightsail-container-containerservicedeployment-publicendpoint>
                                        publicEndpoint :: (Prelude.Maybe PublicEndpointProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerServiceDeploymentProperty ::
  ContainerServiceDeploymentProperty
mkContainerServiceDeploymentProperty
  = ContainerServiceDeploymentProperty
      {haddock_workaround_ = (), containers = Prelude.Nothing,
       publicEndpoint = Prelude.Nothing}
instance ToResourceProperties ContainerServiceDeploymentProperty where
  toResourceProperties ContainerServiceDeploymentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.ContainerServiceDeployment",
         supportsTags = Prelude.False,
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