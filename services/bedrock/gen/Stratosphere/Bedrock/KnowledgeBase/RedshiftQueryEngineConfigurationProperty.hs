module Stratosphere.Bedrock.KnowledgeBase.RedshiftQueryEngineConfigurationProperty (
        module Exports, RedshiftQueryEngineConfigurationProperty(..),
        mkRedshiftQueryEngineConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftProvisionedConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftServerlessConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftQueryEngineConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineconfiguration.html>
    RedshiftQueryEngineConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryengineconfiguration-provisionedconfiguration>
                                              provisionedConfiguration :: (Prelude.Maybe RedshiftProvisionedConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryengineconfiguration-serverlessconfiguration>
                                              serverlessConfiguration :: (Prelude.Maybe RedshiftServerlessConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftqueryengineconfiguration.html#cfn-bedrock-knowledgebase-redshiftqueryengineconfiguration-type>
                                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftQueryEngineConfigurationProperty ::
  Value Prelude.Text -> RedshiftQueryEngineConfigurationProperty
mkRedshiftQueryEngineConfigurationProperty type'
  = RedshiftQueryEngineConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       provisionedConfiguration = Prelude.Nothing,
       serverlessConfiguration = Prelude.Nothing}
instance ToResourceProperties RedshiftQueryEngineConfigurationProperty where
  toResourceProperties RedshiftQueryEngineConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftQueryEngineConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ProvisionedConfiguration"
                                 Prelude.<$> provisionedConfiguration,
                               (JSON..=) "ServerlessConfiguration"
                                 Prelude.<$> serverlessConfiguration]))}
instance JSON.ToJSON RedshiftQueryEngineConfigurationProperty where
  toJSON RedshiftQueryEngineConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ProvisionedConfiguration"
                    Prelude.<$> provisionedConfiguration,
                  (JSON..=) "ServerlessConfiguration"
                    Prelude.<$> serverlessConfiguration])))
instance Property "ProvisionedConfiguration" RedshiftQueryEngineConfigurationProperty where
  type PropertyType "ProvisionedConfiguration" RedshiftQueryEngineConfigurationProperty = RedshiftProvisionedConfigurationProperty
  set newValue RedshiftQueryEngineConfigurationProperty {..}
    = RedshiftQueryEngineConfigurationProperty
        {provisionedConfiguration = Prelude.pure newValue, ..}
instance Property "ServerlessConfiguration" RedshiftQueryEngineConfigurationProperty where
  type PropertyType "ServerlessConfiguration" RedshiftQueryEngineConfigurationProperty = RedshiftServerlessConfigurationProperty
  set newValue RedshiftQueryEngineConfigurationProperty {..}
    = RedshiftQueryEngineConfigurationProperty
        {serverlessConfiguration = Prelude.pure newValue, ..}
instance Property "Type" RedshiftQueryEngineConfigurationProperty where
  type PropertyType "Type" RedshiftQueryEngineConfigurationProperty = Value Prelude.Text
  set newValue RedshiftQueryEngineConfigurationProperty {..}
    = RedshiftQueryEngineConfigurationProperty {type' = newValue, ..}