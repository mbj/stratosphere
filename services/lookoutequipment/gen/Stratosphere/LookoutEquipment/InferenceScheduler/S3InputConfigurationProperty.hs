module Stratosphere.LookoutEquipment.InferenceScheduler.S3InputConfigurationProperty (
        S3InputConfigurationProperty(..), mkS3InputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3InputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-s3inputconfiguration.html>
    S3InputConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-s3inputconfiguration.html#cfn-lookoutequipment-inferencescheduler-s3inputconfiguration-bucket>
                                  bucket :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-s3inputconfiguration.html#cfn-lookoutequipment-inferencescheduler-s3inputconfiguration-prefix>
                                  prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3InputConfigurationProperty ::
  Value Prelude.Text -> S3InputConfigurationProperty
mkS3InputConfigurationProperty bucket
  = S3InputConfigurationProperty
      {haddock_workaround_ = (), bucket = bucket,
       prefix = Prelude.Nothing}
instance ToResourceProperties S3InputConfigurationProperty where
  toResourceProperties S3InputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutEquipment::InferenceScheduler.S3InputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3InputConfigurationProperty where
  toJSON S3InputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "Bucket" S3InputConfigurationProperty where
  type PropertyType "Bucket" S3InputConfigurationProperty = Value Prelude.Text
  set newValue S3InputConfigurationProperty {..}
    = S3InputConfigurationProperty {bucket = newValue, ..}
instance Property "Prefix" S3InputConfigurationProperty where
  type PropertyType "Prefix" S3InputConfigurationProperty = Value Prelude.Text
  set newValue S3InputConfigurationProperty {..}
    = S3InputConfigurationProperty {prefix = Prelude.pure newValue, ..}