module Stratosphere.AmplifyUIBuilder.Form.FileUploaderFieldConfigProperty (
        FileUploaderFieldConfigProperty(..),
        mkFileUploaderFieldConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileUploaderFieldConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fileuploaderfieldconfig.html>
    FileUploaderFieldConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fileuploaderfieldconfig.html#cfn-amplifyuibuilder-form-fileuploaderfieldconfig-acceptedfiletypes>
                                     acceptedFileTypes :: (ValueList Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fileuploaderfieldconfig.html#cfn-amplifyuibuilder-form-fileuploaderfieldconfig-accesslevel>
                                     accessLevel :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fileuploaderfieldconfig.html#cfn-amplifyuibuilder-form-fileuploaderfieldconfig-isresumable>
                                     isResumable :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fileuploaderfieldconfig.html#cfn-amplifyuibuilder-form-fileuploaderfieldconfig-maxfilecount>
                                     maxFileCount :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fileuploaderfieldconfig.html#cfn-amplifyuibuilder-form-fileuploaderfieldconfig-maxsize>
                                     maxSize :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-fileuploaderfieldconfig.html#cfn-amplifyuibuilder-form-fileuploaderfieldconfig-showthumbnails>
                                     showThumbnails :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileUploaderFieldConfigProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> FileUploaderFieldConfigProperty
mkFileUploaderFieldConfigProperty acceptedFileTypes accessLevel
  = FileUploaderFieldConfigProperty
      {haddock_workaround_ = (), acceptedFileTypes = acceptedFileTypes,
       accessLevel = accessLevel, isResumable = Prelude.Nothing,
       maxFileCount = Prelude.Nothing, maxSize = Prelude.Nothing,
       showThumbnails = Prelude.Nothing}
instance ToResourceProperties FileUploaderFieldConfigProperty where
  toResourceProperties FileUploaderFieldConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FileUploaderFieldConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AcceptedFileTypes" JSON..= acceptedFileTypes,
                            "AccessLevel" JSON..= accessLevel]
                           (Prelude.catMaybes
                              [(JSON..=) "IsResumable" Prelude.<$> isResumable,
                               (JSON..=) "MaxFileCount" Prelude.<$> maxFileCount,
                               (JSON..=) "MaxSize" Prelude.<$> maxSize,
                               (JSON..=) "ShowThumbnails" Prelude.<$> showThumbnails]))}
instance JSON.ToJSON FileUploaderFieldConfigProperty where
  toJSON FileUploaderFieldConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AcceptedFileTypes" JSON..= acceptedFileTypes,
               "AccessLevel" JSON..= accessLevel]
              (Prelude.catMaybes
                 [(JSON..=) "IsResumable" Prelude.<$> isResumable,
                  (JSON..=) "MaxFileCount" Prelude.<$> maxFileCount,
                  (JSON..=) "MaxSize" Prelude.<$> maxSize,
                  (JSON..=) "ShowThumbnails" Prelude.<$> showThumbnails])))
instance Property "AcceptedFileTypes" FileUploaderFieldConfigProperty where
  type PropertyType "AcceptedFileTypes" FileUploaderFieldConfigProperty = ValueList Prelude.Text
  set newValue FileUploaderFieldConfigProperty {..}
    = FileUploaderFieldConfigProperty
        {acceptedFileTypes = newValue, ..}
instance Property "AccessLevel" FileUploaderFieldConfigProperty where
  type PropertyType "AccessLevel" FileUploaderFieldConfigProperty = Value Prelude.Text
  set newValue FileUploaderFieldConfigProperty {..}
    = FileUploaderFieldConfigProperty {accessLevel = newValue, ..}
instance Property "IsResumable" FileUploaderFieldConfigProperty where
  type PropertyType "IsResumable" FileUploaderFieldConfigProperty = Value Prelude.Bool
  set newValue FileUploaderFieldConfigProperty {..}
    = FileUploaderFieldConfigProperty
        {isResumable = Prelude.pure newValue, ..}
instance Property "MaxFileCount" FileUploaderFieldConfigProperty where
  type PropertyType "MaxFileCount" FileUploaderFieldConfigProperty = Value Prelude.Double
  set newValue FileUploaderFieldConfigProperty {..}
    = FileUploaderFieldConfigProperty
        {maxFileCount = Prelude.pure newValue, ..}
instance Property "MaxSize" FileUploaderFieldConfigProperty where
  type PropertyType "MaxSize" FileUploaderFieldConfigProperty = Value Prelude.Double
  set newValue FileUploaderFieldConfigProperty {..}
    = FileUploaderFieldConfigProperty
        {maxSize = Prelude.pure newValue, ..}
instance Property "ShowThumbnails" FileUploaderFieldConfigProperty where
  type PropertyType "ShowThumbnails" FileUploaderFieldConfigProperty = Value Prelude.Bool
  set newValue FileUploaderFieldConfigProperty {..}
    = FileUploaderFieldConfigProperty
        {showThumbnails = Prelude.pure newValue, ..}