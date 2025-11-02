module Stratosphere.Bedrock.KnowledgeBase.PineconeConfigurationProperty (
        module Exports, PineconeConfigurationProperty(..),
        mkPineconeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.PineconeFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PineconeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconeconfiguration.html>
    PineconeConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconeconfiguration.html#cfn-bedrock-knowledgebase-pineconeconfiguration-connectionstring>
                                   connectionString :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconeconfiguration.html#cfn-bedrock-knowledgebase-pineconeconfiguration-credentialssecretarn>
                                   credentialsSecretArn :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconeconfiguration.html#cfn-bedrock-knowledgebase-pineconeconfiguration-fieldmapping>
                                   fieldMapping :: PineconeFieldMappingProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-pineconeconfiguration.html#cfn-bedrock-knowledgebase-pineconeconfiguration-namespace>
                                   namespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPineconeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> PineconeFieldMappingProperty -> PineconeConfigurationProperty
mkPineconeConfigurationProperty
  connectionString
  credentialsSecretArn
  fieldMapping
  = PineconeConfigurationProperty
      {haddock_workaround_ = (), connectionString = connectionString,
       credentialsSecretArn = credentialsSecretArn,
       fieldMapping = fieldMapping, namespace = Prelude.Nothing}
instance ToResourceProperties PineconeConfigurationProperty where
  toResourceProperties PineconeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.PineconeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionString" JSON..= connectionString,
                            "CredentialsSecretArn" JSON..= credentialsSecretArn,
                            "FieldMapping" JSON..= fieldMapping]
                           (Prelude.catMaybes [(JSON..=) "Namespace" Prelude.<$> namespace]))}
instance JSON.ToJSON PineconeConfigurationProperty where
  toJSON PineconeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionString" JSON..= connectionString,
               "CredentialsSecretArn" JSON..= credentialsSecretArn,
               "FieldMapping" JSON..= fieldMapping]
              (Prelude.catMaybes [(JSON..=) "Namespace" Prelude.<$> namespace])))
instance Property "ConnectionString" PineconeConfigurationProperty where
  type PropertyType "ConnectionString" PineconeConfigurationProperty = Value Prelude.Text
  set newValue PineconeConfigurationProperty {..}
    = PineconeConfigurationProperty {connectionString = newValue, ..}
instance Property "CredentialsSecretArn" PineconeConfigurationProperty where
  type PropertyType "CredentialsSecretArn" PineconeConfigurationProperty = Value Prelude.Text
  set newValue PineconeConfigurationProperty {..}
    = PineconeConfigurationProperty
        {credentialsSecretArn = newValue, ..}
instance Property "FieldMapping" PineconeConfigurationProperty where
  type PropertyType "FieldMapping" PineconeConfigurationProperty = PineconeFieldMappingProperty
  set newValue PineconeConfigurationProperty {..}
    = PineconeConfigurationProperty {fieldMapping = newValue, ..}
instance Property "Namespace" PineconeConfigurationProperty where
  type PropertyType "Namespace" PineconeConfigurationProperty = Value Prelude.Text
  set newValue PineconeConfigurationProperty {..}
    = PineconeConfigurationProperty
        {namespace = Prelude.pure newValue, ..}