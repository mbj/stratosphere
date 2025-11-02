module Stratosphere.Lightsail.Container.PublicEndpointProperty (
        module Exports, PublicEndpointProperty(..),
        mkPublicEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Container.HealthCheckConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublicEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-publicendpoint.html>
    PublicEndpointProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-publicendpoint.html#cfn-lightsail-container-publicendpoint-containername>
                            containerName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-publicendpoint.html#cfn-lightsail-container-publicendpoint-containerport>
                            containerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-publicendpoint.html#cfn-lightsail-container-publicendpoint-healthcheckconfig>
                            healthCheckConfig :: (Prelude.Maybe HealthCheckConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicEndpointProperty :: PublicEndpointProperty
mkPublicEndpointProperty
  = PublicEndpointProperty
      {haddock_workaround_ = (), containerName = Prelude.Nothing,
       containerPort = Prelude.Nothing,
       healthCheckConfig = Prelude.Nothing}
instance ToResourceProperties PublicEndpointProperty where
  toResourceProperties PublicEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.PublicEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerName" Prelude.<$> containerName,
                            (JSON..=) "ContainerPort" Prelude.<$> containerPort,
                            (JSON..=) "HealthCheckConfig" Prelude.<$> healthCheckConfig])}
instance JSON.ToJSON PublicEndpointProperty where
  toJSON PublicEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerName" Prelude.<$> containerName,
               (JSON..=) "ContainerPort" Prelude.<$> containerPort,
               (JSON..=) "HealthCheckConfig" Prelude.<$> healthCheckConfig]))
instance Property "ContainerName" PublicEndpointProperty where
  type PropertyType "ContainerName" PublicEndpointProperty = Value Prelude.Text
  set newValue PublicEndpointProperty {..}
    = PublicEndpointProperty
        {containerName = Prelude.pure newValue, ..}
instance Property "ContainerPort" PublicEndpointProperty where
  type PropertyType "ContainerPort" PublicEndpointProperty = Value Prelude.Integer
  set newValue PublicEndpointProperty {..}
    = PublicEndpointProperty
        {containerPort = Prelude.pure newValue, ..}
instance Property "HealthCheckConfig" PublicEndpointProperty where
  type PropertyType "HealthCheckConfig" PublicEndpointProperty = HealthCheckConfigProperty
  set newValue PublicEndpointProperty {..}
    = PublicEndpointProperty
        {healthCheckConfig = Prelude.pure newValue, ..}