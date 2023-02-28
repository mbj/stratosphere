module Stratosphere.FIS.ExperimentTemplate.S3ConfigurationProperty (
        S3ConfigurationProperty(..), mkS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigurationProperty
  = S3ConfigurationProperty {bucketName :: (Value Prelude.Text),
                             prefix :: (Prelude.Maybe (Value Prelude.Text))}
mkS3ConfigurationProperty ::
  Value Prelude.Text -> S3ConfigurationProperty
mkS3ConfigurationProperty bucketName
  = S3ConfigurationProperty
      {bucketName = bucketName, prefix = Prelude.Nothing}
instance ToResourceProperties S3ConfigurationProperty where
  toResourceProperties S3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.S3Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3ConfigurationProperty where
  toJSON S3ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "BucketName" S3ConfigurationProperty where
  type PropertyType "BucketName" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {bucketName = newValue, ..}
instance Property "Prefix" S3ConfigurationProperty where
  type PropertyType "Prefix" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {prefix = Prelude.pure newValue, ..}