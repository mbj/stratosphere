module Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineStorageConfigurationProperty (
        module Exports,
        RedshiftQueryEngineStorageConfigurationProperty(..),
        mkRedshiftQueryEngineStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineRedshiftStorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftQueryEngineStorageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryenginestorageconfiguration.html>
    RedshiftQueryEngineStorageConfigurationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryenginestorageconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryenginestorageconfiguration-awsdatacatalogconfiguration>
                                                     awsDataCatalogConfiguration :: (Prelude.Maybe RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryenginestorageconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryenginestorageconfiguration-redshiftconfiguration>
                                                     redshiftConfiguration :: (Prelude.Maybe RedshiftQueryEngineRedshiftStorageConfigurationProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryenginestorageconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryenginestorageconfiguration-type>
                                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftQueryEngineStorageConfigurationProperty ::
  Value Prelude.Text
  -> RedshiftQueryEngineStorageConfigurationProperty
mkRedshiftQueryEngineStorageConfigurationProperty type'
  = RedshiftQueryEngineStorageConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       awsDataCatalogConfiguration = Prelude.Nothing,
       redshiftConfiguration = Prelude.Nothing}
instance ToResourceProperties RedshiftQueryEngineStorageConfigurationProperty where
  toResourceProperties
    RedshiftQueryEngineStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftQueryEngineStorageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AwsDataCatalogConfiguration"
                                 Prelude.<$> awsDataCatalogConfiguration,
                               (JSON..=) "RedshiftConfiguration"
                                 Prelude.<$> redshiftConfiguration]))}
instance JSON.ToJSON RedshiftQueryEngineStorageConfigurationProperty where
  toJSON RedshiftQueryEngineStorageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AwsDataCatalogConfiguration"
                    Prelude.<$> awsDataCatalogConfiguration,
                  (JSON..=) "RedshiftConfiguration"
                    Prelude.<$> redshiftConfiguration])))
instance Property "AwsDataCatalogConfiguration" RedshiftQueryEngineStorageConfigurationProperty where
  type PropertyType "AwsDataCatalogConfiguration" RedshiftQueryEngineStorageConfigurationProperty = RedshiftQueryEngineAwsDataCatalogStorageConfigurationProperty
  set newValue RedshiftQueryEngineStorageConfigurationProperty {..}
    = RedshiftQueryEngineStorageConfigurationProperty
        {awsDataCatalogConfiguration = Prelude.pure newValue, ..}
instance Property "RedshiftConfiguration" RedshiftQueryEngineStorageConfigurationProperty where
  type PropertyType "RedshiftConfiguration" RedshiftQueryEngineStorageConfigurationProperty = RedshiftQueryEngineRedshiftStorageConfigurationProperty
  set newValue RedshiftQueryEngineStorageConfigurationProperty {..}
    = RedshiftQueryEngineStorageConfigurationProperty
        {redshiftConfiguration = Prelude.pure newValue, ..}
instance Property "Type" RedshiftQueryEngineStorageConfigurationProperty where
  type PropertyType "Type" RedshiftQueryEngineStorageConfigurationProperty = Value Prelude.Text
  set newValue RedshiftQueryEngineStorageConfigurationProperty {..}
    = RedshiftQueryEngineStorageConfigurationProperty
        {type' = newValue, ..}