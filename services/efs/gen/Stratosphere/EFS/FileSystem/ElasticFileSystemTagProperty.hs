module Stratosphere.EFS.FileSystem.ElasticFileSystemTagProperty (
        ElasticFileSystemTagProperty(..), mkElasticFileSystemTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticFileSystemTagProperty
  = ElasticFileSystemTagProperty {key :: (Value Prelude.Text),
                                  value :: (Value Prelude.Text)}
mkElasticFileSystemTagProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ElasticFileSystemTagProperty
mkElasticFileSystemTagProperty key value
  = ElasticFileSystemTagProperty {key = key, value = value}
instance ToResourceProperties ElasticFileSystemTagProperty where
  toResourceProperties ElasticFileSystemTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem.ElasticFileSystemTag",
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON ElasticFileSystemTagProperty where
  toJSON ElasticFileSystemTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" ElasticFileSystemTagProperty where
  type PropertyType "Key" ElasticFileSystemTagProperty = Value Prelude.Text
  set newValue ElasticFileSystemTagProperty {..}
    = ElasticFileSystemTagProperty {key = newValue, ..}
instance Property "Value" ElasticFileSystemTagProperty where
  type PropertyType "Value" ElasticFileSystemTagProperty = Value Prelude.Text
  set newValue ElasticFileSystemTagProperty {..}
    = ElasticFileSystemTagProperty {value = newValue, ..}