module Stratosphere.ServiceDiscovery.PrivateDnsNamespace.SOAProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SOAProperty :: Prelude.Type
instance ToResourceProperties SOAProperty
instance Prelude.Eq SOAProperty
instance Prelude.Show SOAProperty
instance JSON.ToJSON SOAProperty