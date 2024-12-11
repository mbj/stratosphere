module Stratosphere.ECS.TaskDefinition.FSxAuthorizationConfigProperty (
        FSxAuthorizationConfigProperty(..),
        mkFSxAuthorizationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FSxAuthorizationConfigProperty
  = FSxAuthorizationConfigProperty {credentialsParameter :: (Value Prelude.Text),
                                    domain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFSxAuthorizationConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FSxAuthorizationConfigProperty
mkFSxAuthorizationConfigProperty credentialsParameter domain
  = FSxAuthorizationConfigProperty
      {credentialsParameter = credentialsParameter, domain = domain}
instance ToResourceProperties FSxAuthorizationConfigProperty where
  toResourceProperties FSxAuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.FSxAuthorizationConfig",
         supportsTags = Prelude.False,
         properties = ["CredentialsParameter" JSON..= credentialsParameter,
                       "Domain" JSON..= domain]}
instance JSON.ToJSON FSxAuthorizationConfigProperty where
  toJSON FSxAuthorizationConfigProperty {..}
    = JSON.object
        ["CredentialsParameter" JSON..= credentialsParameter,
         "Domain" JSON..= domain]
instance Property "CredentialsParameter" FSxAuthorizationConfigProperty where
  type PropertyType "CredentialsParameter" FSxAuthorizationConfigProperty = Value Prelude.Text
  set newValue FSxAuthorizationConfigProperty {..}
    = FSxAuthorizationConfigProperty
        {credentialsParameter = newValue, ..}
instance Property "Domain" FSxAuthorizationConfigProperty where
  type PropertyType "Domain" FSxAuthorizationConfigProperty = Value Prelude.Text
  set newValue FSxAuthorizationConfigProperty {..}
    = FSxAuthorizationConfigProperty {domain = newValue, ..}