module Stratosphere.AppMesh.VirtualNode.ListenerTlsProperty (
        module Exports, ListenerTlsProperty(..), mkListenerTlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsCertificateProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.ListenerTlsValidationContextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerTlsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html>
    ListenerTlsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html#cfn-appmesh-virtualnode-listenertls-certificate>
                         certificate :: ListenerTlsCertificateProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html#cfn-appmesh-virtualnode-listenertls-mode>
                         mode :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html#cfn-appmesh-virtualnode-listenertls-validation>
                         validation :: (Prelude.Maybe ListenerTlsValidationContextProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerTlsProperty ::
  ListenerTlsCertificateProperty
  -> Value Prelude.Text -> ListenerTlsProperty
mkListenerTlsProperty certificate mode
  = ListenerTlsProperty
      {haddock_workaround_ = (), certificate = certificate, mode = mode,
       validation = Prelude.Nothing}
instance ToResourceProperties ListenerTlsProperty where
  toResourceProperties ListenerTlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.ListenerTls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Certificate" JSON..= certificate, "Mode" JSON..= mode]
                           (Prelude.catMaybes
                              [(JSON..=) "Validation" Prelude.<$> validation]))}
instance JSON.ToJSON ListenerTlsProperty where
  toJSON ListenerTlsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Certificate" JSON..= certificate, "Mode" JSON..= mode]
              (Prelude.catMaybes
                 [(JSON..=) "Validation" Prelude.<$> validation])))
instance Property "Certificate" ListenerTlsProperty where
  type PropertyType "Certificate" ListenerTlsProperty = ListenerTlsCertificateProperty
  set newValue ListenerTlsProperty {..}
    = ListenerTlsProperty {certificate = newValue, ..}
instance Property "Mode" ListenerTlsProperty where
  type PropertyType "Mode" ListenerTlsProperty = Value Prelude.Text
  set newValue ListenerTlsProperty {..}
    = ListenerTlsProperty {mode = newValue, ..}
instance Property "Validation" ListenerTlsProperty where
  type PropertyType "Validation" ListenerTlsProperty = ListenerTlsValidationContextProperty
  set newValue ListenerTlsProperty {..}
    = ListenerTlsProperty {validation = Prelude.pure newValue, ..}