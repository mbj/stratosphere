module Stratosphere.Bedrock.KnowledgeBase.NeptuneAnalyticsConfigurationProperty (
        module Exports, NeptuneAnalyticsConfigurationProperty(..),
        mkNeptuneAnalyticsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.NeptuneAnalyticsFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NeptuneAnalyticsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-neptuneanalyticsconfiguration.html>
    NeptuneAnalyticsConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-neptuneanalyticsconfiguration.html#cfn-bedrock-knowledgebase-neptuneanalyticsconfiguration-fieldmapping>
                                           fieldMapping :: NeptuneAnalyticsFieldMappingProperty,
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-neptuneanalyticsconfiguration.html#cfn-bedrock-knowledgebase-neptuneanalyticsconfiguration-grapharn>
                                           graphArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNeptuneAnalyticsConfigurationProperty ::
  NeptuneAnalyticsFieldMappingProperty
  -> Value Prelude.Text -> NeptuneAnalyticsConfigurationProperty
mkNeptuneAnalyticsConfigurationProperty fieldMapping graphArn
  = NeptuneAnalyticsConfigurationProperty
      {haddock_workaround_ = (), fieldMapping = fieldMapping,
       graphArn = graphArn}
instance ToResourceProperties NeptuneAnalyticsConfigurationProperty where
  toResourceProperties NeptuneAnalyticsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.NeptuneAnalyticsConfiguration",
         supportsTags = Prelude.False,
         properties = ["FieldMapping" JSON..= fieldMapping,
                       "GraphArn" JSON..= graphArn]}
instance JSON.ToJSON NeptuneAnalyticsConfigurationProperty where
  toJSON NeptuneAnalyticsConfigurationProperty {..}
    = JSON.object
        ["FieldMapping" JSON..= fieldMapping, "GraphArn" JSON..= graphArn]
instance Property "FieldMapping" NeptuneAnalyticsConfigurationProperty where
  type PropertyType "FieldMapping" NeptuneAnalyticsConfigurationProperty = NeptuneAnalyticsFieldMappingProperty
  set newValue NeptuneAnalyticsConfigurationProperty {..}
    = NeptuneAnalyticsConfigurationProperty
        {fieldMapping = newValue, ..}
instance Property "GraphArn" NeptuneAnalyticsConfigurationProperty where
  type PropertyType "GraphArn" NeptuneAnalyticsConfigurationProperty = Value Prelude.Text
  set newValue NeptuneAnalyticsConfigurationProperty {..}
    = NeptuneAnalyticsConfigurationProperty {graphArn = newValue, ..}