module Stratosphere.Redshift.EndpointAccess.VpcEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VpcEndpointProperty :: Prelude.Type
instance ToResourceProperties VpcEndpointProperty
instance JSON.ToJSON VpcEndpointProperty