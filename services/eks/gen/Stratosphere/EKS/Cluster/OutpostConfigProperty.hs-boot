module Stratosphere.EKS.Cluster.OutpostConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutpostConfigProperty :: Prelude.Type
instance ToResourceProperties OutpostConfigProperty
instance JSON.ToJSON OutpostConfigProperty