module Stratosphere.EFS.FileSystem.ElasticFileSystemTagProperty (
        ElasticFileSystemTagProperty(..), mkElasticFileSystemTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticFileSystemTagProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-elasticfilesystemtag.html>
    ElasticFileSystemTagProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-elasticfilesystemtag.html#cfn-efs-filesystem-elasticfilesystemtag-key>
                                  key :: (Value Prelude.Text),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-elasticfilesystemtag.html#cfn-efs-filesystem-elasticfilesystemtag-value>
                                  value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticFileSystemTagProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ElasticFileSystemTagProperty
mkElasticFileSystemTagProperty key value
  = ElasticFileSystemTagProperty {key = key, value = value}
instance ToResourceProperties ElasticFileSystemTagProperty where
  toResourceProperties ElasticFileSystemTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem.ElasticFileSystemTag",
         supportsTags = Prelude.False,
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