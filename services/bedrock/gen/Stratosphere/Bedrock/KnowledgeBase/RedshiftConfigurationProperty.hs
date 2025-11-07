module Stratosphere.Bedrock.KnowledgeBase.RedshiftConfigurationProperty (
        module Exports, RedshiftConfigurationProperty(..),
        mkRedshiftConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.QueryGenerationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineStorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RedshiftConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftconfiguration.html>
    RedshiftConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftconfiguration.html#cfn-bedrock-knowledgebase-redshiftconfiguration-queryengineconfiguration>
                                   queryEngineConfiguration :: RedshiftQueryEngineConfigurationProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftconfiguration.html#cfn-bedrock-knowledgebase-redshiftconfiguration-querygenerationconfiguration>
                                   queryGenerationConfiguration :: (Prelude.Maybe QueryGenerationConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftconfiguration.html#cfn-bedrock-knowledgebase-redshiftconfiguration-storageconfigurations>
                                   storageConfigurations :: [RedshiftQueryEngineStorageConfigurationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftConfigurationProperty ::
  RedshiftQueryEngineConfigurationProperty
  -> [RedshiftQueryEngineStorageConfigurationProperty]
     -> RedshiftConfigurationProperty
mkRedshiftConfigurationProperty
  queryEngineConfiguration
  storageConfigurations
  = RedshiftConfigurationProperty
      {haddock_workaround_ = (),
       queryEngineConfiguration = queryEngineConfiguration,
       storageConfigurations = storageConfigurations,
       queryGenerationConfiguration = Prelude.Nothing}
instance ToResourceProperties RedshiftConfigurationProperty where
  toResourceProperties RedshiftConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryEngineConfiguration" JSON..= queryEngineConfiguration,
                            "StorageConfigurations" JSON..= storageConfigurations]
                           (Prelude.catMaybes
                              [(JSON..=) "QueryGenerationConfiguration"
                                 Prelude.<$> queryGenerationConfiguration]))}
instance JSON.ToJSON RedshiftConfigurationProperty where
  toJSON RedshiftConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryEngineConfiguration" JSON..= queryEngineConfiguration,
               "StorageConfigurations" JSON..= storageConfigurations]
              (Prelude.catMaybes
                 [(JSON..=) "QueryGenerationConfiguration"
                    Prelude.<$> queryGenerationConfiguration])))
instance Property "QueryEngineConfiguration" RedshiftConfigurationProperty where
  type PropertyType "QueryEngineConfiguration" RedshiftConfigurationProperty = RedshiftQueryEngineConfigurationProperty
  set newValue RedshiftConfigurationProperty {..}
    = RedshiftConfigurationProperty
        {queryEngineConfiguration = newValue, ..}
instance Property "QueryGenerationConfiguration" RedshiftConfigurationProperty where
  type PropertyType "QueryGenerationConfiguration" RedshiftConfigurationProperty = QueryGenerationConfigurationProperty
  set newValue RedshiftConfigurationProperty {..}
    = RedshiftConfigurationProperty
        {queryGenerationConfiguration = Prelude.pure newValue, ..}
instance Property "StorageConfigurations" RedshiftConfigurationProperty where
  type PropertyType "StorageConfigurations" RedshiftConfigurationProperty = [RedshiftQueryEngineStorageConfigurationProperty]
  set newValue RedshiftConfigurationProperty {..}
    = RedshiftConfigurationProperty
        {storageConfigurations = newValue, ..}