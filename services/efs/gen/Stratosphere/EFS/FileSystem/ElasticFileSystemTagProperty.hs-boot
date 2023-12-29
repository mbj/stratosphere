module Stratosphere.EFS.FileSystem.ElasticFileSystemTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ElasticFileSystemTagProperty :: Prelude.Type
instance ToResourceProperties ElasticFileSystemTagProperty
instance Prelude.Eq ElasticFileSystemTagProperty
instance Prelude.Show ElasticFileSystemTagProperty
instance JSON.ToJSON ElasticFileSystemTagProperty