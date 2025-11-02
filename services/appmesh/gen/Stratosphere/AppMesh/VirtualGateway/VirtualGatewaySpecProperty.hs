module Stratosphere.AppMesh.VirtualGateway.VirtualGatewaySpecProperty (
        module Exports, VirtualGatewaySpecProperty(..),
        mkVirtualGatewaySpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayBackendDefaultsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayLoggingProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewaySpecProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html>
    VirtualGatewaySpecProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html#cfn-appmesh-virtualgateway-virtualgatewayspec-backenddefaults>
                                backendDefaults :: (Prelude.Maybe VirtualGatewayBackendDefaultsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html#cfn-appmesh-virtualgateway-virtualgatewayspec-listeners>
                                listeners :: [VirtualGatewayListenerProperty],
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html#cfn-appmesh-virtualgateway-virtualgatewayspec-logging>
                                logging :: (Prelude.Maybe VirtualGatewayLoggingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewaySpecProperty ::
  [VirtualGatewayListenerProperty] -> VirtualGatewaySpecProperty
mkVirtualGatewaySpecProperty listeners
  = VirtualGatewaySpecProperty
      {haddock_workaround_ = (), listeners = listeners,
       backendDefaults = Prelude.Nothing, logging = Prelude.Nothing}
instance ToResourceProperties VirtualGatewaySpecProperty where
  toResourceProperties VirtualGatewaySpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewaySpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Listeners" JSON..= listeners]
                           (Prelude.catMaybes
                              [(JSON..=) "BackendDefaults" Prelude.<$> backendDefaults,
                               (JSON..=) "Logging" Prelude.<$> logging]))}
instance JSON.ToJSON VirtualGatewaySpecProperty where
  toJSON VirtualGatewaySpecProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Listeners" JSON..= listeners]
              (Prelude.catMaybes
                 [(JSON..=) "BackendDefaults" Prelude.<$> backendDefaults,
                  (JSON..=) "Logging" Prelude.<$> logging])))
instance Property "BackendDefaults" VirtualGatewaySpecProperty where
  type PropertyType "BackendDefaults" VirtualGatewaySpecProperty = VirtualGatewayBackendDefaultsProperty
  set newValue VirtualGatewaySpecProperty {..}
    = VirtualGatewaySpecProperty
        {backendDefaults = Prelude.pure newValue, ..}
instance Property "Listeners" VirtualGatewaySpecProperty where
  type PropertyType "Listeners" VirtualGatewaySpecProperty = [VirtualGatewayListenerProperty]
  set newValue VirtualGatewaySpecProperty {..}
    = VirtualGatewaySpecProperty {listeners = newValue, ..}
instance Property "Logging" VirtualGatewaySpecProperty where
  type PropertyType "Logging" VirtualGatewaySpecProperty = VirtualGatewayLoggingProperty
  set newValue VirtualGatewaySpecProperty {..}
    = VirtualGatewaySpecProperty {logging = Prelude.pure newValue, ..}