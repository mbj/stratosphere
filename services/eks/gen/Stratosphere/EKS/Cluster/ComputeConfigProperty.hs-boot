module Stratosphere.EKS.Cluster.ComputeConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComputeConfigProperty :: Prelude.Type
instance ToResourceProperties ComputeConfigProperty
instance Prelude.Eq ComputeConfigProperty
instance Prelude.Show ComputeConfigProperty
instance JSON.ToJSON ComputeConfigProperty