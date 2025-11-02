module Stratosphere.LookoutEquipment.InferenceScheduler.DataOutputConfigurationProperty (
        module Exports, DataOutputConfigurationProperty(..),
        mkDataOutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutEquipment.InferenceScheduler.S3OutputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataOutputConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-dataoutputconfiguration.html>
    DataOutputConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-dataoutputconfiguration.html#cfn-lookoutequipment-inferencescheduler-dataoutputconfiguration-kmskeyid>
                                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutequipment-inferencescheduler-dataoutputconfiguration.html#cfn-lookoutequipment-inferencescheduler-dataoutputconfiguration-s3outputconfiguration>
                                     s3OutputConfiguration :: S3OutputConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataOutputConfigurationProperty ::
  S3OutputConfigurationProperty -> DataOutputConfigurationProperty
mkDataOutputConfigurationProperty s3OutputConfiguration
  = DataOutputConfigurationProperty
      {haddock_workaround_ = (),
       s3OutputConfiguration = s3OutputConfiguration,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties DataOutputConfigurationProperty where
  toResourceProperties DataOutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutEquipment::InferenceScheduler.DataOutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3OutputConfiguration" JSON..= s3OutputConfiguration]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON DataOutputConfigurationProperty where
  toJSON DataOutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3OutputConfiguration" JSON..= s3OutputConfiguration]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" DataOutputConfigurationProperty where
  type PropertyType "KmsKeyId" DataOutputConfigurationProperty = Value Prelude.Text
  set newValue DataOutputConfigurationProperty {..}
    = DataOutputConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "S3OutputConfiguration" DataOutputConfigurationProperty where
  type PropertyType "S3OutputConfiguration" DataOutputConfigurationProperty = S3OutputConfigurationProperty
  set newValue DataOutputConfigurationProperty {..}
    = DataOutputConfigurationProperty
        {s3OutputConfiguration = newValue, ..}