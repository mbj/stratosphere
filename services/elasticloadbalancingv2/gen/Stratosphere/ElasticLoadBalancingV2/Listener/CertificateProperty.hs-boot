module Stratosphere.ElasticLoadBalancingV2.Listener.CertificateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CertificateProperty :: Prelude.Type
instance ToResourceProperties CertificateProperty
instance JSON.ToJSON CertificateProperty