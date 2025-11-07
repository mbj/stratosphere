module Stratosphere.DataZone.Connection.BasicAuthenticationCredentialsProperty (
        BasicAuthenticationCredentialsProperty(..),
        mkBasicAuthenticationCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthenticationCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-basicauthenticationcredentials.html>
    BasicAuthenticationCredentialsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-basicauthenticationcredentials.html#cfn-datazone-connection-basicauthenticationcredentials-password>
                                            password :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-basicauthenticationcredentials.html#cfn-datazone-connection-basicauthenticationcredentials-username>
                                            userName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasicAuthenticationCredentialsProperty ::
  BasicAuthenticationCredentialsProperty
mkBasicAuthenticationCredentialsProperty
  = BasicAuthenticationCredentialsProperty
      {haddock_workaround_ = (), password = Prelude.Nothing,
       userName = Prelude.Nothing}
instance ToResourceProperties BasicAuthenticationCredentialsProperty where
  toResourceProperties BasicAuthenticationCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.BasicAuthenticationCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "UserName" Prelude.<$> userName])}
instance JSON.ToJSON BasicAuthenticationCredentialsProperty where
  toJSON BasicAuthenticationCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "UserName" Prelude.<$> userName]))
instance Property "Password" BasicAuthenticationCredentialsProperty where
  type PropertyType "Password" BasicAuthenticationCredentialsProperty = Value Prelude.Text
  set newValue BasicAuthenticationCredentialsProperty {..}
    = BasicAuthenticationCredentialsProperty
        {password = Prelude.pure newValue, ..}
instance Property "UserName" BasicAuthenticationCredentialsProperty where
  type PropertyType "UserName" BasicAuthenticationCredentialsProperty = Value Prelude.Text
  set newValue BasicAuthenticationCredentialsProperty {..}
    = BasicAuthenticationCredentialsProperty
        {userName = Prelude.pure newValue, ..}