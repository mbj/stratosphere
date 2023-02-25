module Stratosphere.MSK.Cluster.EBSStorageInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EBSStorageInfoProperty :: Prelude.Type
instance ToResourceProperties EBSStorageInfoProperty
instance JSON.ToJSON EBSStorageInfoProperty