module Stratosphere.Bedrock.KnowledgeBase.SupplementalDataStorageConfigurationProperty (
        module Exports, SupplementalDataStorageConfigurationProperty(..),
        mkSupplementalDataStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.SupplementalDataStorageLocationProperty as Exports
import Stratosphere.ResourceProperties
data SupplementalDataStorageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-supplementaldatastorageconfiguration.html>
    SupplementalDataStorageConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-supplementaldatastorageconfiguration.html#cfn-bedrock-knowledgebase-supplementaldatastorageconfiguration-supplementaldatastoragelocations>
                                                  supplementalDataStorageLocations :: [SupplementalDataStorageLocationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSupplementalDataStorageConfigurationProperty ::
  [SupplementalDataStorageLocationProperty]
  -> SupplementalDataStorageConfigurationProperty
mkSupplementalDataStorageConfigurationProperty
  supplementalDataStorageLocations
  = SupplementalDataStorageConfigurationProperty
      {haddock_workaround_ = (),
       supplementalDataStorageLocations = supplementalDataStorageLocations}
instance ToResourceProperties SupplementalDataStorageConfigurationProperty where
  toResourceProperties
    SupplementalDataStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.SupplementalDataStorageConfiguration",
         supportsTags = Prelude.False,
         properties = ["SupplementalDataStorageLocations"
                         JSON..= supplementalDataStorageLocations]}
instance JSON.ToJSON SupplementalDataStorageConfigurationProperty where
  toJSON SupplementalDataStorageConfigurationProperty {..}
    = JSON.object
        ["SupplementalDataStorageLocations"
           JSON..= supplementalDataStorageLocations]
instance Property "SupplementalDataStorageLocations" SupplementalDataStorageConfigurationProperty where
  type PropertyType "SupplementalDataStorageLocations" SupplementalDataStorageConfigurationProperty = [SupplementalDataStorageLocationProperty]
  set newValue SupplementalDataStorageConfigurationProperty {..}
    = SupplementalDataStorageConfigurationProperty
        {supplementalDataStorageLocations = newValue, ..}