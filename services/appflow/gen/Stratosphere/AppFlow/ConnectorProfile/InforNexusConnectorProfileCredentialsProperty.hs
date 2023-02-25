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
  = InforNexusConnectorProfileCredentialsProperty {accessKeyId :: (Value Prelude.Text),
                                                   datakey :: (Value Prelude.Text),
                                                   secretAccessKey :: (Value Prelude.Text),
                                                   userId :: (Value Prelude.Text)}
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
      {accessKeyId = accessKeyId, datakey = datakey,
       secretAccessKey = secretAccessKey, userId = userId}
instance ToResourceProperties InforNexusConnectorProfileCredentialsProperty where
  toResourceProperties
    InforNexusConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.InforNexusConnectorProfileCredentials",
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