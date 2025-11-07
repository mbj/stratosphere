module Stratosphere.Bedrock.KnowledgeBase.RedshiftServerlessConfigurationProperty (
        module Exports, RedshiftServerlessConfigurationProperty(..),
        mkRedshiftServerlessConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftServerlessAuthConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftServerlessConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftserverlessconfiguration.html>
    RedshiftServerlessConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftserverlessconfiguration.html#cfn-bedrock-knowledgebase-redshiftserverlessconfiguration-authconfiguration>
                                             authConfiguration :: RedshiftServerlessAuthConfigurationProperty,
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftserverlessconfiguration.html#cfn-bedrock-knowledgebase-redshiftserverlessconfiguration-workgrouparn>
                                             workgroupArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftServerlessConfigurationProperty ::
  RedshiftServerlessAuthConfigurationProperty
  -> Value Prelude.Text -> RedshiftServerlessConfigurationProperty
mkRedshiftServerlessConfigurationProperty
  authConfiguration
  workgroupArn
  = RedshiftServerlessConfigurationProperty
      {haddock_workaround_ = (), authConfiguration = authConfiguration,
       workgroupArn = workgroupArn}
instance ToResourceProperties RedshiftServerlessConfigurationProperty where
  toResourceProperties RedshiftServerlessConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftServerlessConfiguration",
         supportsTags = Prelude.False,
         properties = ["AuthConfiguration" JSON..= authConfiguration,
                       "WorkgroupArn" JSON..= workgroupArn]}
instance JSON.ToJSON RedshiftServerlessConfigurationProperty where
  toJSON RedshiftServerlessConfigurationProperty {..}
    = JSON.object
        ["AuthConfiguration" JSON..= authConfiguration,
         "WorkgroupArn" JSON..= workgroupArn]
instance Property "AuthConfiguration" RedshiftServerlessConfigurationProperty where
  type PropertyType "AuthConfiguration" RedshiftServerlessConfigurationProperty = RedshiftServerlessAuthConfigurationProperty
  set newValue RedshiftServerlessConfigurationProperty {..}
    = RedshiftServerlessConfigurationProperty
        {authConfiguration = newValue, ..}
instance Property "WorkgroupArn" RedshiftServerlessConfigurationProperty where
  type PropertyType "WorkgroupArn" RedshiftServerlessConfigurationProperty = Value Prelude.Text
  set newValue RedshiftServerlessConfigurationProperty {..}
    = RedshiftServerlessConfigurationProperty
        {workgroupArn = newValue, ..}