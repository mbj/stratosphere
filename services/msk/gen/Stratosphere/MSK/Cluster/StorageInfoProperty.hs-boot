module Stratosphere.MSK.Cluster.StorageInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StorageInfoProperty :: Prelude.Type
instance ToResourceProperties StorageInfoProperty
instance JSON.ToJSON StorageInfoProperty