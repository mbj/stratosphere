module Stratosphere.Bedrock.KnowledgeBase.OpenSearchManagedClusterConfigurationProperty (
        module Exports, OpenSearchManagedClusterConfigurationProperty(..),
        mkOpenSearchManagedClusterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.OpenSearchManagedClusterFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenSearchManagedClusterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterconfiguration.html>
    OpenSearchManagedClusterConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterconfiguration.html#cfn-bedrock-knowledgebase-opensearchmanagedclusterconfiguration-domainarn>
                                                   domainArn :: (Value Prelude.Text),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterconfiguration.html#cfn-bedrock-knowledgebase-opensearchmanagedclusterconfiguration-domainendpoint>
                                                   domainEndpoint :: (Value Prelude.Text),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterconfiguration.html#cfn-bedrock-knowledgebase-opensearchmanagedclusterconfiguration-fieldmapping>
                                                   fieldMapping :: OpenSearchManagedClusterFieldMappingProperty,
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-opensearchmanagedclusterconfiguration.html#cfn-bedrock-knowledgebase-opensearchmanagedclusterconfiguration-vectorindexname>
                                                   vectorIndexName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenSearchManagedClusterConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> OpenSearchManagedClusterFieldMappingProperty
        -> Value Prelude.Text
           -> OpenSearchManagedClusterConfigurationProperty
mkOpenSearchManagedClusterConfigurationProperty
  domainArn
  domainEndpoint
  fieldMapping
  vectorIndexName
  = OpenSearchManagedClusterConfigurationProperty
      {haddock_workaround_ = (), domainArn = domainArn,
       domainEndpoint = domainEndpoint, fieldMapping = fieldMapping,
       vectorIndexName = vectorIndexName}
instance ToResourceProperties OpenSearchManagedClusterConfigurationProperty where
  toResourceProperties
    OpenSearchManagedClusterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.OpenSearchManagedClusterConfiguration",
         supportsTags = Prelude.False,
         properties = ["DomainArn" JSON..= domainArn,
                       "DomainEndpoint" JSON..= domainEndpoint,
                       "FieldMapping" JSON..= fieldMapping,
                       "VectorIndexName" JSON..= vectorIndexName]}
instance JSON.ToJSON OpenSearchManagedClusterConfigurationProperty where
  toJSON OpenSearchManagedClusterConfigurationProperty {..}
    = JSON.object
        ["DomainArn" JSON..= domainArn,
         "DomainEndpoint" JSON..= domainEndpoint,
         "FieldMapping" JSON..= fieldMapping,
         "VectorIndexName" JSON..= vectorIndexName]
instance Property "DomainArn" OpenSearchManagedClusterConfigurationProperty where
  type PropertyType "DomainArn" OpenSearchManagedClusterConfigurationProperty = Value Prelude.Text
  set newValue OpenSearchManagedClusterConfigurationProperty {..}
    = OpenSearchManagedClusterConfigurationProperty
        {domainArn = newValue, ..}
instance Property "DomainEndpoint" OpenSearchManagedClusterConfigurationProperty where
  type PropertyType "DomainEndpoint" OpenSearchManagedClusterConfigurationProperty = Value Prelude.Text
  set newValue OpenSearchManagedClusterConfigurationProperty {..}
    = OpenSearchManagedClusterConfigurationProperty
        {domainEndpoint = newValue, ..}
instance Property "FieldMapping" OpenSearchManagedClusterConfigurationProperty where
  type PropertyType "FieldMapping" OpenSearchManagedClusterConfigurationProperty = OpenSearchManagedClusterFieldMappingProperty
  set newValue OpenSearchManagedClusterConfigurationProperty {..}
    = OpenSearchManagedClusterConfigurationProperty
        {fieldMapping = newValue, ..}
instance Property "VectorIndexName" OpenSearchManagedClusterConfigurationProperty where
  type PropertyType "VectorIndexName" OpenSearchManagedClusterConfigurationProperty = Value Prelude.Text
  set newValue OpenSearchManagedClusterConfigurationProperty {..}
    = OpenSearchManagedClusterConfigurationProperty
        {vectorIndexName = newValue, ..}