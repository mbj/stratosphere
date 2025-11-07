module Stratosphere.Bedrock.KnowledgeBase.RedshiftProvisionedAuthConfigurationProperty (
        RedshiftProvisionedAuthConfigurationProperty(..),
        mkRedshiftProvisionedAuthConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftProvisionedAuthConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftprovisionedauthconfiguration.html>
    RedshiftProvisionedAuthConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftprovisionedauthconfiguration.html#cfn-bedrock-knowledgebase-redshiftprovisionedauthconfiguration-databaseuser>
                                                  databaseUser :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftprovisionedauthconfiguration.html#cfn-bedrock-knowledgebase-redshiftprovisionedauthconfiguration-type>
                                                  type' :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftprovisionedauthconfiguration.html#cfn-bedrock-knowledgebase-redshiftprovisionedauthconfiguration-usernamepasswordsecretarn>
                                                  usernamePasswordSecretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftProvisionedAuthConfigurationProperty ::
  Value Prelude.Text -> RedshiftProvisionedAuthConfigurationProperty
mkRedshiftProvisionedAuthConfigurationProperty type'
  = RedshiftProvisionedAuthConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       databaseUser = Prelude.Nothing,
       usernamePasswordSecretArn = Prelude.Nothing}
instance ToResourceProperties RedshiftProvisionedAuthConfigurationProperty where
  toResourceProperties
    RedshiftProvisionedAuthConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftProvisionedAuthConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DatabaseUser" Prelude.<$> databaseUser,
                               (JSON..=) "UsernamePasswordSecretArn"
                                 Prelude.<$> usernamePasswordSecretArn]))}
instance JSON.ToJSON RedshiftProvisionedAuthConfigurationProperty where
  toJSON RedshiftProvisionedAuthConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DatabaseUser" Prelude.<$> databaseUser,
                  (JSON..=) "UsernamePasswordSecretArn"
                    Prelude.<$> usernamePasswordSecretArn])))
instance Property "DatabaseUser" RedshiftProvisionedAuthConfigurationProperty where
  type PropertyType "DatabaseUser" RedshiftProvisionedAuthConfigurationProperty = Value Prelude.Text
  set newValue RedshiftProvisionedAuthConfigurationProperty {..}
    = RedshiftProvisionedAuthConfigurationProperty
        {databaseUser = Prelude.pure newValue, ..}
instance Property "Type" RedshiftProvisionedAuthConfigurationProperty where
  type PropertyType "Type" RedshiftProvisionedAuthConfigurationProperty = Value Prelude.Text
  set newValue RedshiftProvisionedAuthConfigurationProperty {..}
    = RedshiftProvisionedAuthConfigurationProperty
        {type' = newValue, ..}
instance Property "UsernamePasswordSecretArn" RedshiftProvisionedAuthConfigurationProperty where
  type PropertyType "UsernamePasswordSecretArn" RedshiftProvisionedAuthConfigurationProperty = Value Prelude.Text
  set newValue RedshiftProvisionedAuthConfigurationProperty {..}
    = RedshiftProvisionedAuthConfigurationProperty
        {usernamePasswordSecretArn = Prelude.pure newValue, ..}