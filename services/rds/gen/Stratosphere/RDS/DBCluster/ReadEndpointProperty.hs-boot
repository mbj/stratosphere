module Stratosphere.RDS.DBCluster.ReadEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReadEndpointProperty :: Prelude.Type
instance ToResourceProperties ReadEndpointProperty
instance Prelude.Eq ReadEndpointProperty
instance Prelude.Show ReadEndpointProperty
instance JSON.ToJSON ReadEndpointProperty