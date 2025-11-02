module Stratosphere.AppFlow.ConnectorProfile.SnowflakeConnectorProfileCredentialsProperty (
        SnowflakeConnectorProfileCredentialsProperty(..),
        mkSnowflakeConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofilecredentials.html>
    SnowflakeConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-snowflakeconnectorprofilecredentials-password>
                                                  password :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofilecredentials.html#cfn-appflow-connectorprofile-snowflakeconnectorprofilecredentials-username>
                                                  username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SnowflakeConnectorProfileCredentialsProperty
mkSnowflakeConnectorProfileCredentialsProperty password username
  = SnowflakeConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), password = password,
       username = username}
instance ToResourceProperties SnowflakeConnectorProfileCredentialsProperty where
  toResourceProperties
    SnowflakeConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SnowflakeConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON SnowflakeConnectorProfileCredentialsProperty where
  toJSON SnowflakeConnectorProfileCredentialsProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" SnowflakeConnectorProfileCredentialsProperty where
  type PropertyType "Password" SnowflakeConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfileCredentialsProperty {..}
    = SnowflakeConnectorProfileCredentialsProperty
        {password = newValue, ..}
instance Property "Username" SnowflakeConnectorProfileCredentialsProperty where
  type PropertyType "Username" SnowflakeConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfileCredentialsProperty {..}
    = SnowflakeConnectorProfileCredentialsProperty
        {username = newValue, ..}