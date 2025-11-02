module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayListenerTlsValidationContextTrustProperty (
        module Exports,
        VirtualGatewayListenerTlsValidationContextTrustProperty(..),
        mkVirtualGatewayListenerTlsValidationContextTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextFileTrustProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextSdsTrustProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayListenerTlsValidationContextTrustProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontexttrust.html>
    VirtualGatewayListenerTlsValidationContextTrustProperty {haddock_workaround_ :: (),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontexttrust-file>
                                                             file :: (Prelude.Maybe VirtualGatewayTlsValidationContextFileTrustProperty),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlsvalidationcontexttrust-sds>
                                                             sDS :: (Prelude.Maybe VirtualGatewayTlsValidationContextSdsTrustProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayListenerTlsValidationContextTrustProperty ::
  VirtualGatewayListenerTlsValidationContextTrustProperty
mkVirtualGatewayListenerTlsValidationContextTrustProperty
  = VirtualGatewayListenerTlsValidationContextTrustProperty
      {haddock_workaround_ = (), file = Prelude.Nothing,
       sDS = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayListenerTlsValidationContextTrustProperty where
  toResourceProperties
    VirtualGatewayListenerTlsValidationContextTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayListenerTlsValidationContextTrust",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON VirtualGatewayListenerTlsValidationContextTrustProperty where
  toJSON VirtualGatewayListenerTlsValidationContextTrustProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "File" VirtualGatewayListenerTlsValidationContextTrustProperty where
  type PropertyType "File" VirtualGatewayListenerTlsValidationContextTrustProperty = VirtualGatewayTlsValidationContextFileTrustProperty
  set
    newValue
    VirtualGatewayListenerTlsValidationContextTrustProperty {..}
    = VirtualGatewayListenerTlsValidationContextTrustProperty
        {file = Prelude.pure newValue, ..}
instance Property "SDS" VirtualGatewayListenerTlsValidationContextTrustProperty where
  type PropertyType "SDS" VirtualGatewayListenerTlsValidationContextTrustProperty = VirtualGatewayTlsValidationContextSdsTrustProperty
  set
    newValue
    VirtualGatewayListenerTlsValidationContextTrustProperty {..}
    = VirtualGatewayListenerTlsValidationContextTrustProperty
        {sDS = Prelude.pure newValue, ..}