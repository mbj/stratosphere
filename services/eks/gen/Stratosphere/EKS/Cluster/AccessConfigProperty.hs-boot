module Stratosphere.EKS.Cluster.AccessConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessConfigProperty :: Prelude.Type
instance ToResourceProperties AccessConfigProperty
instance Prelude.Eq AccessConfigProperty
instance Prelude.Show AccessConfigProperty
instance JSON.ToJSON AccessConfigProperty