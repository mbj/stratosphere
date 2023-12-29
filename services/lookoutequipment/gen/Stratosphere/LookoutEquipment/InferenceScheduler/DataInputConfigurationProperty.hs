module Stratosphere.LookoutEquipment.InferenceScheduler.DataInputConfigurationProperty (
        module Exports, DataInputConfigurationProperty(..),
        mkDataInputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutEquipment.InferenceScheduler.InputNameConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutEquipment.InferenceScheduler.S3InputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataInputConfigurationProperty
  = DataInputConfigurationProperty {inferenceInputNameConfiguration :: (Prelude.Maybe InputNameConfigurationProperty),
                                    inputTimeZoneOffset :: (Prelude.Maybe (Value Prelude.Text)),
                                    s3InputConfiguration :: S3InputConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataInputConfigurationProperty ::
  S3InputConfigurationProperty -> DataInputConfigurationProperty
mkDataInputConfigurationProperty s3InputConfiguration
  = DataInputConfigurationProperty
      {s3InputConfiguration = s3InputConfiguration,
       inferenceInputNameConfiguration = Prelude.Nothing,
       inputTimeZoneOffset = Prelude.Nothing}
instance ToResourceProperties DataInputConfigurationProperty where
  toResourceProperties DataInputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutEquipment::InferenceScheduler.DataInputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3InputConfiguration" JSON..= s3InputConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "InferenceInputNameConfiguration"
                                 Prelude.<$> inferenceInputNameConfiguration,
                               (JSON..=) "InputTimeZoneOffset" Prelude.<$> inputTimeZoneOffset]))}
instance JSON.ToJSON DataInputConfigurationProperty where
  toJSON DataInputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3InputConfiguration" JSON..= s3InputConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "InferenceInputNameConfiguration"
                    Prelude.<$> inferenceInputNameConfiguration,
                  (JSON..=) "InputTimeZoneOffset" Prelude.<$> inputTimeZoneOffset])))
instance Property "InferenceInputNameConfiguration" DataInputConfigurationProperty where
  type PropertyType "InferenceInputNameConfiguration" DataInputConfigurationProperty = InputNameConfigurationProperty
  set newValue DataInputConfigurationProperty {..}
    = DataInputConfigurationProperty
        {inferenceInputNameConfiguration = Prelude.pure newValue, ..}
instance Property "InputTimeZoneOffset" DataInputConfigurationProperty where
  type PropertyType "InputTimeZoneOffset" DataInputConfigurationProperty = Value Prelude.Text
  set newValue DataInputConfigurationProperty {..}
    = DataInputConfigurationProperty
        {inputTimeZoneOffset = Prelude.pure newValue, ..}
instance Property "S3InputConfiguration" DataInputConfigurationProperty where
  type PropertyType "S3InputConfiguration" DataInputConfigurationProperty = S3InputConfigurationProperty
  set newValue DataInputConfigurationProperty {..}
    = DataInputConfigurationProperty
        {s3InputConfiguration = newValue, ..}