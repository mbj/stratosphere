module Stratosphere.AppFlow.ConnectorProfile.RedshiftConnectorProfileCredentialsProperty (
        RedshiftConnectorProfileCredentialsProperty(..),
        mkRedshiftConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofilecredentials.html>
    RedshiftConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofilecredentials.html#cfn-appflow-connectorprofile-redshiftconnectorprofilecredentials-password>
                                                 password :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofilecredentials.html#cfn-appflow-connectorprofile-redshiftconnectorprofilecredentials-username>
                                                 username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftConnectorProfileCredentialsProperty ::
  RedshiftConnectorProfileCredentialsProperty
mkRedshiftConnectorProfileCredentialsProperty
  = RedshiftConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), password = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties RedshiftConnectorProfileCredentialsProperty where
  toResourceProperties
    RedshiftConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.RedshiftConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON RedshiftConnectorProfileCredentialsProperty where
  toJSON RedshiftConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "Password" RedshiftConnectorProfileCredentialsProperty where
  type PropertyType "Password" RedshiftConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfileCredentialsProperty {..}
    = RedshiftConnectorProfileCredentialsProperty
        {password = Prelude.pure newValue, ..}
instance Property "Username" RedshiftConnectorProfileCredentialsProperty where
  type PropertyType "Username" RedshiftConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue RedshiftConnectorProfileCredentialsProperty {..}
    = RedshiftConnectorProfileCredentialsProperty
        {username = Prelude.pure newValue, ..}