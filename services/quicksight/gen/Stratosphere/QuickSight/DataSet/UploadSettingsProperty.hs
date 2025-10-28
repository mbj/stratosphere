module Stratosphere.QuickSight.DataSet.UploadSettingsProperty (
        UploadSettingsProperty(..), mkUploadSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UploadSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uploadsettings.html>
    UploadSettingsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uploadsettings.html#cfn-quicksight-dataset-uploadsettings-containsheader>
                            containsHeader :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uploadsettings.html#cfn-quicksight-dataset-uploadsettings-delimiter>
                            delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uploadsettings.html#cfn-quicksight-dataset-uploadsettings-format>
                            format :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uploadsettings.html#cfn-quicksight-dataset-uploadsettings-startfromrow>
                            startFromRow :: (Prelude.Maybe (Value Prelude.Double)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uploadsettings.html#cfn-quicksight-dataset-uploadsettings-textqualifier>
                            textQualifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUploadSettingsProperty :: UploadSettingsProperty
mkUploadSettingsProperty
  = UploadSettingsProperty
      {haddock_workaround_ = (), containsHeader = Prelude.Nothing,
       delimiter = Prelude.Nothing, format = Prelude.Nothing,
       startFromRow = Prelude.Nothing, textQualifier = Prelude.Nothing}
instance ToResourceProperties UploadSettingsProperty where
  toResourceProperties UploadSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.UploadSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
                            (JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "Format" Prelude.<$> format,
                            (JSON..=) "StartFromRow" Prelude.<$> startFromRow,
                            (JSON..=) "TextQualifier" Prelude.<$> textQualifier])}
instance JSON.ToJSON UploadSettingsProperty where
  toJSON UploadSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
               (JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "Format" Prelude.<$> format,
               (JSON..=) "StartFromRow" Prelude.<$> startFromRow,
               (JSON..=) "TextQualifier" Prelude.<$> textQualifier]))
instance Property "ContainsHeader" UploadSettingsProperty where
  type PropertyType "ContainsHeader" UploadSettingsProperty = Value Prelude.Bool
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty
        {containsHeader = Prelude.pure newValue, ..}
instance Property "Delimiter" UploadSettingsProperty where
  type PropertyType "Delimiter" UploadSettingsProperty = Value Prelude.Text
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty {delimiter = Prelude.pure newValue, ..}
instance Property "Format" UploadSettingsProperty where
  type PropertyType "Format" UploadSettingsProperty = Value Prelude.Text
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty {format = Prelude.pure newValue, ..}
instance Property "StartFromRow" UploadSettingsProperty where
  type PropertyType "StartFromRow" UploadSettingsProperty = Value Prelude.Double
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty {startFromRow = Prelude.pure newValue, ..}
instance Property "TextQualifier" UploadSettingsProperty where
  type PropertyType "TextQualifier" UploadSettingsProperty = Value Prelude.Text
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty
        {textQualifier = Prelude.pure newValue, ..}