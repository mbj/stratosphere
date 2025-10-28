module Stratosphere.LookoutEquipment.InferenceScheduler.S3OutputConfigurationProperty (
        S3OutputConfigurationProperty(..), mkS3OutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OutputConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-s3outputconfiguration.html>
    S3OutputConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-s3outputconfiguration.html#cfn-lookoutequipment-inferencescheduler-s3outputconfiguration-bucket>
                                   bucket :: (Value Prelude.Text),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-s3outputconfiguration.html#cfn-lookoutequipment-inferencescheduler-s3outputconfiguration-prefix>
                                   prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3OutputConfigurationProperty ::
  Value Prelude.Text -> S3OutputConfigurationProperty
mkS3OutputConfigurationProperty bucket
  = S3OutputConfigurationProperty
      {bucket = bucket, prefix = Prelude.Nothing}
instance ToResourceProperties S3OutputConfigurationProperty where
  toResourceProperties S3OutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutEquipment::InferenceScheduler.S3OutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3OutputConfigurationProperty where
  toJSON S3OutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "Bucket" S3OutputConfigurationProperty where
  type PropertyType "Bucket" S3OutputConfigurationProperty = Value Prelude.Text
  set newValue S3OutputConfigurationProperty {..}
    = S3OutputConfigurationProperty {bucket = newValue, ..}
instance Property "Prefix" S3OutputConfigurationProperty where
  type PropertyType "Prefix" S3OutputConfigurationProperty = Value Prelude.Text
  set newValue S3OutputConfigurationProperty {..}
    = S3OutputConfigurationProperty
        {prefix = Prelude.pure newValue, ..}