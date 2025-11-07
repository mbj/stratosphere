module Stratosphere.RTBFabric.ResponderGateway.TrustStoreConfigurationProperty (
        TrustStoreConfigurationProperty(..),
        mkTrustStoreConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrustStoreConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-truststoreconfiguration.html>
    TrustStoreConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-truststoreconfiguration.html#cfn-rtbfabric-respondergateway-truststoreconfiguration-certificateauthoritycertificates>
                                     certificateAuthorityCertificates :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustStoreConfigurationProperty ::
  ValueList Prelude.Text -> TrustStoreConfigurationProperty
mkTrustStoreConfigurationProperty certificateAuthorityCertificates
  = TrustStoreConfigurationProperty
      {haddock_workaround_ = (),
       certificateAuthorityCertificates = certificateAuthorityCertificates}
instance ToResourceProperties TrustStoreConfigurationProperty where
  toResourceProperties TrustStoreConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::ResponderGateway.TrustStoreConfiguration",
         supportsTags = Prelude.False,
         properties = ["CertificateAuthorityCertificates"
                         JSON..= certificateAuthorityCertificates]}
instance JSON.ToJSON TrustStoreConfigurationProperty where
  toJSON TrustStoreConfigurationProperty {..}
    = JSON.object
        ["CertificateAuthorityCertificates"
           JSON..= certificateAuthorityCertificates]
instance Property "CertificateAuthorityCertificates" TrustStoreConfigurationProperty where
  type PropertyType "CertificateAuthorityCertificates" TrustStoreConfigurationProperty = ValueList Prelude.Text
  set newValue TrustStoreConfigurationProperty {..}
    = TrustStoreConfigurationProperty
        {certificateAuthorityCertificates = newValue, ..}