module Stratosphere.ServiceDiscovery.PrivateDnsNamespace.PropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PropertiesProperty :: Prelude.Type
instance ToResourceProperties PropertiesProperty
instance JSON.ToJSON PropertiesProperty