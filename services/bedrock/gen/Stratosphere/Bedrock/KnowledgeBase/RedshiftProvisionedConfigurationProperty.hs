module Stratosphere.Bedrock.KnowledgeBase.RedshiftProvisionedConfigurationProperty (
        module Exports, RedshiftProvisionedConfigurationProperty(..),
        mkRedshiftProvisionedConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftProvisionedAuthConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftProvisionedConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftprovisionedconfiguration.html>
    RedshiftProvisionedConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftprovisionedconfiguration.html#cfn-bedrock-knowledgebase-redshiftprovisionedconfiguration-authconfiguration>
                                              authConfiguration :: RedshiftProvisionedAuthConfigurationProperty,
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftprovisionedconfiguration.html#cfn-bedrock-knowledgebase-redshiftprovisionedconfiguration-clusteridentifier>
                                              clusterIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftProvisionedConfigurationProperty ::
  RedshiftProvisionedAuthConfigurationProperty
  -> Value Prelude.Text -> RedshiftProvisionedConfigurationProperty
mkRedshiftProvisionedConfigurationProperty
  authConfiguration
  clusterIdentifier
  = RedshiftProvisionedConfigurationProperty
      {haddock_workaround_ = (), authConfiguration = authConfiguration,
       clusterIdentifier = clusterIdentifier}
instance ToResourceProperties RedshiftProvisionedConfigurationProperty where
  toResourceProperties RedshiftProvisionedConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftProvisionedConfiguration",
         supportsTags = Prelude.False,
         properties = ["AuthConfiguration" JSON..= authConfiguration,
                       "ClusterIdentifier" JSON..= clusterIdentifier]}
instance JSON.ToJSON RedshiftProvisionedConfigurationProperty where
  toJSON RedshiftProvisionedConfigurationProperty {..}
    = JSON.object
        ["AuthConfiguration" JSON..= authConfiguration,
         "ClusterIdentifier" JSON..= clusterIdentifier]
instance Property "AuthConfiguration" RedshiftProvisionedConfigurationProperty where
  type PropertyType "AuthConfiguration" RedshiftProvisionedConfigurationProperty = RedshiftProvisionedAuthConfigurationProperty
  set newValue RedshiftProvisionedConfigurationProperty {..}
    = RedshiftProvisionedConfigurationProperty
        {authConfiguration = newValue, ..}
instance Property "ClusterIdentifier" RedshiftProvisionedConfigurationProperty where
  type PropertyType "ClusterIdentifier" RedshiftProvisionedConfigurationProperty = Value Prelude.Text
  set newValue RedshiftProvisionedConfigurationProperty {..}
    = RedshiftProvisionedConfigurationProperty
        {clusterIdentifier = newValue, ..}