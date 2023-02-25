module Stratosphere.EMR.Cluster.ApplicationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApplicationProperty :: Prelude.Type
instance ToResourceProperties ApplicationProperty
instance JSON.ToJSON ApplicationProperty