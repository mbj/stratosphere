module Stratosphere.Bedrock.KnowledgeBase.SupplementalDataStorageLocationProperty (
        module Exports, SupplementalDataStorageLocationProperty(..),
        mkSupplementalDataStorageLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SupplementalDataStorageLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-supplementaldatastoragelocation.html>
    SupplementalDataStorageLocationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-supplementaldatastoragelocation.html#cfn-bedrock-knowledgebase-supplementaldatastoragelocation-s3location>
                                             s3Location :: (Prelude.Maybe S3LocationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-supplementaldatastoragelocation.html#cfn-bedrock-knowledgebase-supplementaldatastoragelocation-supplementaldatastoragelocationtype>
                                             supplementalDataStorageLocationType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSupplementalDataStorageLocationProperty ::
  Value Prelude.Text -> SupplementalDataStorageLocationProperty
mkSupplementalDataStorageLocationProperty
  supplementalDataStorageLocationType
  = SupplementalDataStorageLocationProperty
      {haddock_workaround_ = (),
       supplementalDataStorageLocationType = supplementalDataStorageLocationType,
       s3Location = Prelude.Nothing}
instance ToResourceProperties SupplementalDataStorageLocationProperty where
  toResourceProperties SupplementalDataStorageLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.SupplementalDataStorageLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SupplementalDataStorageLocationType"
                              JSON..= supplementalDataStorageLocationType]
                           (Prelude.catMaybes
                              [(JSON..=) "S3Location" Prelude.<$> s3Location]))}
instance JSON.ToJSON SupplementalDataStorageLocationProperty where
  toJSON SupplementalDataStorageLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SupplementalDataStorageLocationType"
                 JSON..= supplementalDataStorageLocationType]
              (Prelude.catMaybes
                 [(JSON..=) "S3Location" Prelude.<$> s3Location])))
instance Property "S3Location" SupplementalDataStorageLocationProperty where
  type PropertyType "S3Location" SupplementalDataStorageLocationProperty = S3LocationProperty
  set newValue SupplementalDataStorageLocationProperty {..}
    = SupplementalDataStorageLocationProperty
        {s3Location = Prelude.pure newValue, ..}
instance Property "SupplementalDataStorageLocationType" SupplementalDataStorageLocationProperty where
  type PropertyType "SupplementalDataStorageLocationType" SupplementalDataStorageLocationProperty = Value Prelude.Text
  set newValue SupplementalDataStorageLocationProperty {..}
    = SupplementalDataStorageLocationProperty
        {supplementalDataStorageLocationType = newValue, ..}