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
  = FileUploaderFieldConfigProperty {acceptedFileTypes :: (ValueList Prelude.Text),
                                     accessLevel :: (Value Prelude.Text),
                                     isResumable :: (Prelude.Maybe (Value Prelude.Bool)),
                                     maxFileCount :: (Prelude.Maybe (Value Prelude.Double)),
                                     maxSize :: (Prelude.Maybe (Value Prelude.Double)),
                                     showThumbnails :: (Prelude.Maybe (Value Prelude.Bool))}
mkFileUploaderFieldConfigProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> FileUploaderFieldConfigProperty
mkFileUploaderFieldConfigProperty acceptedFileTypes accessLevel
  = FileUploaderFieldConfigProperty
      {acceptedFileTypes = acceptedFileTypes, accessLevel = accessLevel,
       isResumable = Prelude.Nothing, maxFileCount = Prelude.Nothing,
       maxSize = Prelude.Nothing, showThumbnails = Prelude.Nothing}
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