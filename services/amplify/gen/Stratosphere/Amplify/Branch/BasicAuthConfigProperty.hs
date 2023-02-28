module Stratosphere.Amplify.Branch.BasicAuthConfigProperty (
        BasicAuthConfigProperty(..), mkBasicAuthConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthConfigProperty
  = BasicAuthConfigProperty {enableBasicAuth :: (Prelude.Maybe (Value Prelude.Bool)),
                             password :: (Value Prelude.Text),
                             username :: (Value Prelude.Text)}
mkBasicAuthConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> BasicAuthConfigProperty
mkBasicAuthConfigProperty password username
  = BasicAuthConfigProperty
      {password = password, username = username,
       enableBasicAuth = Prelude.Nothing}
instance ToResourceProperties BasicAuthConfigProperty where
  toResourceProperties BasicAuthConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Branch.BasicAuthConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Password" JSON..= password, "Username" JSON..= username]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth]))}
instance JSON.ToJSON BasicAuthConfigProperty where
  toJSON BasicAuthConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Password" JSON..= password, "Username" JSON..= username]
              (Prelude.catMaybes
                 [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth])))
instance Property "EnableBasicAuth" BasicAuthConfigProperty where
  type PropertyType "EnableBasicAuth" BasicAuthConfigProperty = Value Prelude.Bool
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty
        {enableBasicAuth = Prelude.pure newValue, ..}
instance Property "Password" BasicAuthConfigProperty where
  type PropertyType "Password" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {password = newValue, ..}
instance Property "Username" BasicAuthConfigProperty where
  type PropertyType "Username" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {username = newValue, ..}