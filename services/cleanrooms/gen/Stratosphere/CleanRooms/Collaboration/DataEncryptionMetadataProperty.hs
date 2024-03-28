module Stratosphere.CleanRooms.Collaboration.DataEncryptionMetadataProperty (
        DataEncryptionMetadataProperty(..),
        mkDataEncryptionMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataEncryptionMetadataProperty
  = DataEncryptionMetadataProperty {allowCleartext :: (Value Prelude.Bool),
                                    allowDuplicates :: (Value Prelude.Bool),
                                    allowJoinsOnColumnsWithDifferentNames :: (Value Prelude.Bool),
                                    preserveNulls :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataEncryptionMetadataProperty ::
  Value Prelude.Bool
  -> Value Prelude.Bool
     -> Value Prelude.Bool
        -> Value Prelude.Bool -> DataEncryptionMetadataProperty
mkDataEncryptionMetadataProperty
  allowCleartext
  allowDuplicates
  allowJoinsOnColumnsWithDifferentNames
  preserveNulls
  = DataEncryptionMetadataProperty
      {allowCleartext = allowCleartext,
       allowDuplicates = allowDuplicates,
       allowJoinsOnColumnsWithDifferentNames = allowJoinsOnColumnsWithDifferentNames,
       preserveNulls = preserveNulls}
instance ToResourceProperties DataEncryptionMetadataProperty where
  toResourceProperties DataEncryptionMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.DataEncryptionMetadata",
         supportsTags = Prelude.False,
         properties = ["AllowCleartext" JSON..= allowCleartext,
                       "AllowDuplicates" JSON..= allowDuplicates,
                       "AllowJoinsOnColumnsWithDifferentNames"
                         JSON..= allowJoinsOnColumnsWithDifferentNames,
                       "PreserveNulls" JSON..= preserveNulls]}
instance JSON.ToJSON DataEncryptionMetadataProperty where
  toJSON DataEncryptionMetadataProperty {..}
    = JSON.object
        ["AllowCleartext" JSON..= allowCleartext,
         "AllowDuplicates" JSON..= allowDuplicates,
         "AllowJoinsOnColumnsWithDifferentNames"
           JSON..= allowJoinsOnColumnsWithDifferentNames,
         "PreserveNulls" JSON..= preserveNulls]
instance Property "AllowCleartext" DataEncryptionMetadataProperty where
  type PropertyType "AllowCleartext" DataEncryptionMetadataProperty = Value Prelude.Bool
  set newValue DataEncryptionMetadataProperty {..}
    = DataEncryptionMetadataProperty {allowCleartext = newValue, ..}
instance Property "AllowDuplicates" DataEncryptionMetadataProperty where
  type PropertyType "AllowDuplicates" DataEncryptionMetadataProperty = Value Prelude.Bool
  set newValue DataEncryptionMetadataProperty {..}
    = DataEncryptionMetadataProperty {allowDuplicates = newValue, ..}
instance Property "AllowJoinsOnColumnsWithDifferentNames" DataEncryptionMetadataProperty where
  type PropertyType "AllowJoinsOnColumnsWithDifferentNames" DataEncryptionMetadataProperty = Value Prelude.Bool
  set newValue DataEncryptionMetadataProperty {..}
    = DataEncryptionMetadataProperty
        {allowJoinsOnColumnsWithDifferentNames = newValue, ..}
instance Property "PreserveNulls" DataEncryptionMetadataProperty where
  type PropertyType "PreserveNulls" DataEncryptionMetadataProperty = Value Prelude.Bool
  set newValue DataEncryptionMetadataProperty {..}
    = DataEncryptionMetadataProperty {preserveNulls = newValue, ..}