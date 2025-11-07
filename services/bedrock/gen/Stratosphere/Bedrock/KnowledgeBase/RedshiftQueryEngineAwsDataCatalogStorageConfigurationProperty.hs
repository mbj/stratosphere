module Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty (
        RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty(..),
        mkRedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineawsdatacatalogstorageconfiguration.html>
    RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty {haddock_workaround_ :: (),
                                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineawsdatacatalogstorageconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryengineawsdatacatalogstorageconfiguration-tablenames>
                                                                   tableNames :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty ::
  ValueList Prelude.Text
  -> RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty
mkRedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty
  tableNames
  = RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty
      {haddock_workaround_ = (), tableNames = tableNames}
instance ToResourceProperties RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty where
  toResourceProperties
    RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftQueryEngineAwsDataCatalogStorageConfiguration",
         supportsTags = Prelude.False,
         properties = ["TableNames" JSON..= tableNames]}
instance JSON.ToJSON RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty where
  toJSON
    RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty {..}
    = JSON.object ["TableNames" JSON..= tableNames]
instance Property "TableNames" RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty where
  type PropertyType "TableNames" RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty = ValueList Prelude.Text
  set
    newValue
    RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty {..}
    = RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty
        {tableNames = newValue, ..}