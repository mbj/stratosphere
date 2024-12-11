module Stratosphere.EKS.Cluster.StorageConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StorageConfigProperty :: Prelude.Type
instance ToResourceProperties StorageConfigProperty
instance Prelude.Eq StorageConfigProperty
instance Prelude.Show StorageConfigProperty
instance JSON.ToJSON StorageConfigProperty