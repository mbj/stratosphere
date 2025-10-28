module Stratosphere.MSK.Cluster.TlsProperty (
        TlsProperty(..), mkTlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html>
    TlsProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html#cfn-msk-cluster-tls-certificateauthorityarnlist>
                 certificateAuthorityArnList :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html#cfn-msk-cluster-tls-enabled>
                 enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTlsProperty :: TlsProperty
mkTlsProperty
  = TlsProperty
      {haddock_workaround_ = (),
       certificateAuthorityArnList = Prelude.Nothing,
       enabled = Prelude.Nothing}
instance ToResourceProperties TlsProperty where
  toResourceProperties TlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Tls", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateAuthorityArnList"
                              Prelude.<$> certificateAuthorityArnList,
                            (JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON TlsProperty where
  toJSON TlsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateAuthorityArnList"
                 Prelude.<$> certificateAuthorityArnList,
               (JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "CertificateAuthorityArnList" TlsProperty where
  type PropertyType "CertificateAuthorityArnList" TlsProperty = ValueList Prelude.Text
  set newValue TlsProperty {..}
    = TlsProperty
        {certificateAuthorityArnList = Prelude.pure newValue, ..}
instance Property "Enabled" TlsProperty where
  type PropertyType "Enabled" TlsProperty = Value Prelude.Bool
  set newValue TlsProperty {..}
    = TlsProperty {enabled = Prelude.pure newValue, ..}