module Stratosphere.Amplify.App.BasicAuthConfigProperty (
        BasicAuthConfigProperty(..), mkBasicAuthConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthConfigProperty
  = BasicAuthConfigProperty {enableBasicAuth :: (Prelude.Maybe (Value Prelude.Bool)),
                             password :: (Prelude.Maybe (Value Prelude.Text)),
                             username :: (Prelude.Maybe (Value Prelude.Text))}
mkBasicAuthConfigProperty :: BasicAuthConfigProperty
mkBasicAuthConfigProperty
  = BasicAuthConfigProperty
      {enableBasicAuth = Prelude.Nothing, password = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties BasicAuthConfigProperty where
  toResourceProperties BasicAuthConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::App.BasicAuthConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON BasicAuthConfigProperty where
  toJSON BasicAuthConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "EnableBasicAuth" BasicAuthConfigProperty where
  type PropertyType "EnableBasicAuth" BasicAuthConfigProperty = Value Prelude.Bool
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty
        {enableBasicAuth = Prelude.pure newValue, ..}
instance Property "Password" BasicAuthConfigProperty where
  type PropertyType "Password" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {password = Prelude.pure newValue, ..}
instance Property "Username" BasicAuthConfigProperty where
  type PropertyType "Username" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {username = Prelude.pure newValue, ..}