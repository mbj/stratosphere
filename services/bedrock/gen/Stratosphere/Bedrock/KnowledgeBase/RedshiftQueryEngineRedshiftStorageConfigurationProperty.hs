module Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineRedshiftStorageConfigurationProperty (
        RedshiftQueryEngineRedshiftStorageConfigurationProperty(..),
        mkRedshiftQueryEngineRedshiftStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftQueryEngineRedshiftStorageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineredshiftstorageconfiguration.html>
    RedshiftQueryEngineRedshiftStorageConfigurationProperty {haddock_workaround_ :: (),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineredshiftstorageconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryengineredshiftstorageconfiguration-databasename>
                                                             databaseName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftQueryEngineRedshiftStorageConfigurationProperty ::
  Value Prelude.Text
  -> RedshiftQueryEngineRedshiftStorageConfigurationProperty
mkRedshiftQueryEngineRedshiftStorageConfigurationProperty
  databaseName
  = RedshiftQueryEngineRedshiftStorageConfigurationProperty
      {haddock_workaround_ = (), databaseName = databaseName}
instance ToResourceProperties RedshiftQueryEngineRedshiftStorageConfigurationProperty where
  toResourceProperties
    RedshiftQueryEngineRedshiftStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftQueryEngineRedshiftStorageConfiguration",
         supportsTags = Prelude.False,
         properties = ["DatabaseName" JSON..= databaseName]}
instance JSON.ToJSON RedshiftQueryEngineRedshiftStorageConfigurationProperty where
  toJSON RedshiftQueryEngineRedshiftStorageConfigurationProperty {..}
    = JSON.object ["DatabaseName" JSON..= databaseName]
instance Property "DatabaseName" RedshiftQueryEngineRedshiftStorageConfigurationProperty where
  type PropertyType "DatabaseName" RedshiftQueryEngineRedshiftStorageConfigurationProperty = Value Prelude.Text
  set
    newValue
    RedshiftQueryEngineRedshiftStorageConfigurationProperty {..}
    = RedshiftQueryEngineRedshiftStorageConfigurationProperty
        {databaseName = newValue, ..}