module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextTrustProperty (
        module Exports,
        VirtualGatewayTlsValidationContextTrustProperty(..),
        mkVirtualGatewayTlsValidationContextTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextAcmTrustProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextFileTrustProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextSdsTrustProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayTlsValidationContextTrustProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html>
    VirtualGatewayTlsValidationContextTrustProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-acm>
                                                     aCM :: (Prelude.Maybe VirtualGatewayTlsValidationContextAcmTrustProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-file>
                                                     file :: (Prelude.Maybe VirtualGatewayTlsValidationContextFileTrustProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-sds>
                                                     sDS :: (Prelude.Maybe VirtualGatewayTlsValidationContextSdsTrustProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayTlsValidationContextTrustProperty ::
  VirtualGatewayTlsValidationContextTrustProperty
mkVirtualGatewayTlsValidationContextTrustProperty
  = VirtualGatewayTlsValidationContextTrustProperty
      {haddock_workaround_ = (), aCM = Prelude.Nothing,
       file = Prelude.Nothing, sDS = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayTlsValidationContextTrustProperty where
  toResourceProperties
    VirtualGatewayTlsValidationContextTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContextTrust",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ACM" Prelude.<$> aCM,
                            (JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON VirtualGatewayTlsValidationContextTrustProperty where
  toJSON VirtualGatewayTlsValidationContextTrustProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ACM" Prelude.<$> aCM,
               (JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "ACM" VirtualGatewayTlsValidationContextTrustProperty where
  type PropertyType "ACM" VirtualGatewayTlsValidationContextTrustProperty = VirtualGatewayTlsValidationContextAcmTrustProperty
  set newValue VirtualGatewayTlsValidationContextTrustProperty {..}
    = VirtualGatewayTlsValidationContextTrustProperty
        {aCM = Prelude.pure newValue, ..}
instance Property "File" VirtualGatewayTlsValidationContextTrustProperty where
  type PropertyType "File" VirtualGatewayTlsValidationContextTrustProperty = VirtualGatewayTlsValidationContextFileTrustProperty
  set newValue VirtualGatewayTlsValidationContextTrustProperty {..}
    = VirtualGatewayTlsValidationContextTrustProperty
        {file = Prelude.pure newValue, ..}
instance Property "SDS" VirtualGatewayTlsValidationContextTrustProperty where
  type PropertyType "SDS" VirtualGatewayTlsValidationContextTrustProperty = VirtualGatewayTlsValidationContextSdsTrustProperty
  set newValue VirtualGatewayTlsValidationContextTrustProperty {..}
    = VirtualGatewayTlsValidationContextTrustProperty
        {sDS = Prelude.pure newValue, ..}