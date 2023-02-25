module Stratosphere.ServiceDiscovery.PublicDnsNamespace.SOAProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SOAProperty :: Prelude.Type
instance ToResourceProperties SOAProperty
instance JSON.ToJSON SOAProperty