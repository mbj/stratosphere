module Stratosphere.MSK.Cluster.PublicAccessProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PublicAccessProperty :: Prelude.Type
instance ToResourceProperties PublicAccessProperty
instance JSON.ToJSON PublicAccessProperty