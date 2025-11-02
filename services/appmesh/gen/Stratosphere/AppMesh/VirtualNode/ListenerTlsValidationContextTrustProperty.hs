module Stratosphere.AppMesh.VirtualNode.ListenerTlsValidationContextTrustProperty (
        module Exports, ListenerTlsValidationContextTrustProperty(..),
        mkListenerTlsValidationContextTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TlsValidationContextFileTrustProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TlsValidationContextSdsTrustProperty as Exports
import Stratosphere.ResourceProperties
data ListenerTlsValidationContextTrustProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontexttrust.html>
    ListenerTlsValidationContextTrustProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-listenertlsvalidationcontexttrust-file>
                                               file :: (Prelude.Maybe TlsValidationContextFileTrustProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-listenertlsvalidationcontexttrust-sds>
                                               sDS :: (Prelude.Maybe TlsValidationContextSdsTrustProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTlsValidationContextTrustProperty ::
  ListenerTlsValidationContextTrustProperty
mkListenerTlsValidationContextTrustProperty
  = ListenerTlsValidationContextTrustProperty
      {haddock_workaround_ = (), file = Prelude.Nothing,
       sDS = Prelude.Nothing}
instance ToResourceProperties ListenerTlsValidationContextTrustProperty where
  toResourceProperties ListenerTlsValidationContextTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTlsValidationContextTrust",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON ListenerTlsValidationContextTrustProperty where
  toJSON ListenerTlsValidationContextTrustProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "File" ListenerTlsValidationContextTrustProperty where
  type PropertyType "File" ListenerTlsValidationContextTrustProperty = TlsValidationContextFileTrustProperty
  set newValue ListenerTlsValidationContextTrustProperty {..}
    = ListenerTlsValidationContextTrustProperty
        {file = Prelude.pure newValue, ..}
instance Property "SDS" ListenerTlsValidationContextTrustProperty where
  type PropertyType "SDS" ListenerTlsValidationContextTrustProperty = TlsValidationContextSdsTrustProperty
  set newValue ListenerTlsValidationContextTrustProperty {..}
    = ListenerTlsValidationContextTrustProperty
        {sDS = Prelude.pure newValue, ..}