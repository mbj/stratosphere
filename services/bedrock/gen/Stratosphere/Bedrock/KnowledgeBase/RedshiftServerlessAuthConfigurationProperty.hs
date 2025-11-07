module Stratosphere.Bedrock.KnowledgeBase.RedshiftServerlessAuthConfigurationProperty (
        RedshiftServerlessAuthConfigurationProperty(..),
        mkRedshiftServerlessAuthConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftServerlessAuthConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftserverlessauthconfiguration.html>
    RedshiftServerlessAuthConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftserverlessauthconfiguration.html#cfn-bedrock-knowledgebase-redshiftserverlessauthconfiguration-type>
                                                 type' :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-redshiftserverlessauthconfiguration.html#cfn-bedrock-knowledgebase-redshiftserverlessauthconfiguration-usernamepasswordsecretarn>
                                                 usernamePasswordSecretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftServerlessAuthConfigurationProperty ::
  Value Prelude.Text -> RedshiftServerlessAuthConfigurationProperty
mkRedshiftServerlessAuthConfigurationProperty type'
  = RedshiftServerlessAuthConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       usernamePasswordSecretArn = Prelude.Nothing}
instance ToResourceProperties RedshiftServerlessAuthConfigurationProperty where
  toResourceProperties
    RedshiftServerlessAuthConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.RedshiftServerlessAuthConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "UsernamePasswordSecretArn"
                                 Prelude.<$> usernamePasswordSecretArn]))}
instance JSON.ToJSON RedshiftServerlessAuthConfigurationProperty where
  toJSON RedshiftServerlessAuthConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "UsernamePasswordSecretArn"
                    Prelude.<$> usernamePasswordSecretArn])))
instance Property "Type" RedshiftServerlessAuthConfigurationProperty where
  type PropertyType "Type" RedshiftServerlessAuthConfigurationProperty = Value Prelude.Text
  set newValue RedshiftServerlessAuthConfigurationProperty {..}
    = RedshiftServerlessAuthConfigurationProperty
        {type' = newValue, ..}
instance Property "UsernamePasswordSecretArn" RedshiftServerlessAuthConfigurationProperty where
  type PropertyType "UsernamePasswordSecretArn" RedshiftServerlessAuthConfigurationProperty = Value Prelude.Text
  set newValue RedshiftServerlessAuthConfigurationProperty {..}
    = RedshiftServerlessAuthConfigurationProperty
        {usernamePasswordSecretArn = Prelude.pure newValue, ..}