module Stratosphere.Bedrock.KnowledgeBase.NeptuneAnalyticsFieldMappingProperty (
        NeptuneAnalyticsFieldMappingProperty(..),
        mkNeptuneAnalyticsFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NeptuneAnalyticsFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-neptuneanalyticsfieldmapping.html>
    NeptuneAnalyticsFieldMappingProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-neptuneanalyticsfieldmapping.html#cfn-bedrock-knowledgebase-neptuneanalyticsfieldmapping-metadatafield>
                                          metadataField :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-neptuneanalyticsfieldmapping.html#cfn-bedrock-knowledgebase-neptuneanalyticsfieldmapping-textfield>
                                          textField :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNeptuneAnalyticsFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> NeptuneAnalyticsFieldMappingProperty
mkNeptuneAnalyticsFieldMappingProperty metadataField textField
  = NeptuneAnalyticsFieldMappingProperty
      {haddock_workaround_ = (), metadataField = metadataField,
       textField = textField}
instance ToResourceProperties NeptuneAnalyticsFieldMappingProperty where
  toResourceProperties NeptuneAnalyticsFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.NeptuneAnalyticsFieldMapping",
         supportsTags = Prelude.False,
         properties = ["MetadataField" JSON..= metadataField,
                       "TextField" JSON..= textField]}
instance JSON.ToJSON NeptuneAnalyticsFieldMappingProperty where
  toJSON NeptuneAnalyticsFieldMappingProperty {..}
    = JSON.object
        ["MetadataField" JSON..= metadataField,
         "TextField" JSON..= textField]
instance Property "MetadataField" NeptuneAnalyticsFieldMappingProperty where
  type PropertyType "MetadataField" NeptuneAnalyticsFieldMappingProperty = Value Prelude.Text
  set newValue NeptuneAnalyticsFieldMappingProperty {..}
    = NeptuneAnalyticsFieldMappingProperty
        {metadataField = newValue, ..}
instance Property "TextField" NeptuneAnalyticsFieldMappingProperty where
  type PropertyType "TextField" NeptuneAnalyticsFieldMappingProperty = Value Prelude.Text
  set newValue NeptuneAnalyticsFieldMappingProperty {..}
    = NeptuneAnalyticsFieldMappingProperty {textField = newValue, ..}