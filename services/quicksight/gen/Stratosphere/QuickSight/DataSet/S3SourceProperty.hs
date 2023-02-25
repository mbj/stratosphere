module Stratosphere.QuickSight.DataSet.S3SourceProperty (
        module Exports, S3SourceProperty(..), mkS3SourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.InputColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.UploadSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3SourceProperty
  = S3SourceProperty {dataSourceArn :: (Value Prelude.Text),
                      inputColumns :: [InputColumnProperty],
                      uploadSettings :: (Prelude.Maybe UploadSettingsProperty)}
mkS3SourceProperty ::
  Value Prelude.Text -> [InputColumnProperty] -> S3SourceProperty
mkS3SourceProperty dataSourceArn inputColumns
  = S3SourceProperty
      {dataSourceArn = dataSourceArn, inputColumns = inputColumns,
       uploadSettings = Prelude.Nothing}
instance ToResourceProperties S3SourceProperty where
  toResourceProperties S3SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.S3Source",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceArn" JSON..= dataSourceArn,
                            "InputColumns" JSON..= inputColumns]
                           (Prelude.catMaybes
                              [(JSON..=) "UploadSettings" Prelude.<$> uploadSettings]))}
instance JSON.ToJSON S3SourceProperty where
  toJSON S3SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceArn" JSON..= dataSourceArn,
               "InputColumns" JSON..= inputColumns]
              (Prelude.catMaybes
                 [(JSON..=) "UploadSettings" Prelude.<$> uploadSettings])))
instance Property "DataSourceArn" S3SourceProperty where
  type PropertyType "DataSourceArn" S3SourceProperty = Value Prelude.Text
  set newValue S3SourceProperty {..}
    = S3SourceProperty {dataSourceArn = newValue, ..}
instance Property "InputColumns" S3SourceProperty where
  type PropertyType "InputColumns" S3SourceProperty = [InputColumnProperty]
  set newValue S3SourceProperty {..}
    = S3SourceProperty {inputColumns = newValue, ..}
instance Property "UploadSettings" S3SourceProperty where
  type PropertyType "UploadSettings" S3SourceProperty = UploadSettingsProperty
  set newValue S3SourceProperty {..}
    = S3SourceProperty {uploadSettings = Prelude.pure newValue, ..}