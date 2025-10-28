module Stratosphere.AppFlow.ConnectorProfile.InforNexusConnectorProfileCredentialsProperty (
        InforNexusConnectorProfileCredentialsProperty(..),
        mkInforNexusConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InforNexusConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html>
    InforNexusConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-accesskeyid>
                                                   accessKeyId :: (Value Prelude.Text),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-datakey>
                                                   datakey :: (Value Prelude.Text),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-secretaccesskey>
                                                   secretAccessKey :: (Value Prelude.Text),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-infornexusconnectorprofilecredentials.html#cfn-appflow-connectorprofile-infornexusconnectorprofilecredentials-userid>
                                                   userId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInforNexusConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> InforNexusConnectorProfileCredentialsProperty
mkInforNexusConnectorProfileCredentialsProperty
  accessKeyId
  datakey
  secretAccessKey
  userId
  = InforNexusConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), accessKeyId = accessKeyId,
       datakey = datakey, secretAccessKey = secretAccessKey,
       userId = userId}
instance ToResourceProperties InforNexusConnectorProfileCredentialsProperty where
  toResourceProperties
    InforNexusConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.InforNexusConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["AccessKeyId" JSON..= accessKeyId,
                       "Datakey" JSON..= datakey,
                       "SecretAccessKey" JSON..= secretAccessKey,
                       "UserId" JSON..= userId]}
instance JSON.ToJSON InforNexusConnectorProfileCredentialsProperty where
  toJSON InforNexusConnectorProfileCredentialsProperty {..}
    = JSON.object
        ["AccessKeyId" JSON..= accessKeyId, "Datakey" JSON..= datakey,
         "SecretAccessKey" JSON..= secretAccessKey, "UserId" JSON..= userId]
instance Property "AccessKeyId" InforNexusConnectorProfileCredentialsProperty where
  type PropertyType "AccessKeyId" InforNexusConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue InforNexusConnectorProfileCredentialsProperty {..}
    = InforNexusConnectorProfileCredentialsProperty
        {accessKeyId = newValue, ..}
instance Property "Datakey" InforNexusConnectorProfileCredentialsProperty where
  type PropertyType "Datakey" InforNexusConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue InforNexusConnectorProfileCredentialsProperty {..}
    = InforNexusConnectorProfileCredentialsProperty
        {datakey = newValue, ..}
instance Property "SecretAccessKey" InforNexusConnectorProfileCredentialsProperty where
  type PropertyType "SecretAccessKey" InforNexusConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue InforNexusConnectorProfileCredentialsProperty {..}
    = InforNexusConnectorProfileCredentialsProperty
        {secretAccessKey = newValue, ..}
instance Property "UserId" InforNexusConnectorProfileCredentialsProperty where
  type PropertyType "UserId" InforNexusConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue InforNexusConnectorProfileCredentialsProperty {..}
    = InforNexusConnectorProfileCredentialsProperty
        {userId = newValue, ..}