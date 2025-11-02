module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextProperty (
        module Exports, VirtualGatewayTlsValidationContextProperty(..),
        mkVirtualGatewayTlsValidationContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.SubjectAlternativeNamesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.VirtualGatewayTlsValidationContextTrustProperty as Exports
import Stratosphere.ResourceProperties
data VirtualGatewayTlsValidationContextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext.html>
    VirtualGatewayTlsValidationContextProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext-subjectalternativenames>
                                                subjectAlternativeNames :: (Prelude.Maybe SubjectAlternativeNamesProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext-trust>
                                                trust :: VirtualGatewayTlsValidationContextTrustProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayTlsValidationContextProperty ::
  VirtualGatewayTlsValidationContextTrustProperty
  -> VirtualGatewayTlsValidationContextProperty
mkVirtualGatewayTlsValidationContextProperty trust
  = VirtualGatewayTlsValidationContextProperty
      {haddock_workaround_ = (), trust = trust,
       subjectAlternativeNames = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayTlsValidationContextProperty where
  toResourceProperties
    VirtualGatewayTlsValidationContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayTlsValidationContext",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Trust" JSON..= trust]
                           (Prelude.catMaybes
                              [(JSON..=) "SubjectAlternativeNames"
                                 Prelude.<$> subjectAlternativeNames]))}
instance JSON.ToJSON VirtualGatewayTlsValidationContextProperty where
  toJSON VirtualGatewayTlsValidationContextProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Trust" JSON..= trust]
              (Prelude.catMaybes
                 [(JSON..=) "SubjectAlternativeNames"
                    Prelude.<$> subjectAlternativeNames])))
instance Property "SubjectAlternativeNames" VirtualGatewayTlsValidationContextProperty where
  type PropertyType "SubjectAlternativeNames" VirtualGatewayTlsValidationContextProperty = SubjectAlternativeNamesProperty
  set newValue VirtualGatewayTlsValidationContextProperty {..}
    = VirtualGatewayTlsValidationContextProperty
        {subjectAlternativeNames = Prelude.pure newValue, ..}
instance Property "Trust" VirtualGatewayTlsValidationContextProperty where
  type PropertyType "Trust" VirtualGatewayTlsValidationContextProperty = VirtualGatewayTlsValidationContextTrustProperty
  set newValue VirtualGatewayTlsValidationContextProperty {..}
    = VirtualGatewayTlsValidationContextProperty {trust = newValue, ..}