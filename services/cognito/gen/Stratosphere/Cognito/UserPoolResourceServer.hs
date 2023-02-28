module Stratosphere.Cognito.UserPoolResourceServer (
        module Exports, UserPoolResourceServer(..),
        mkUserPoolResourceServer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolResourceServer.ResourceServerScopeTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolResourceServer
  = UserPoolResourceServer {identifier :: (Value Prelude.Text),
                            name :: (Value Prelude.Text),
                            scopes :: (Prelude.Maybe [ResourceServerScopeTypeProperty]),
                            userPoolId :: (Value Prelude.Text)}
mkUserPoolResourceServer ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> UserPoolResourceServer
mkUserPoolResourceServer identifier name userPoolId
  = UserPoolResourceServer
      {identifier = identifier, name = name, userPoolId = userPoolId,
       scopes = Prelude.Nothing}
instance ToResourceProperties UserPoolResourceServer where
  toResourceProperties UserPoolResourceServer {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolResourceServer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Identifier" JSON..= identifier, "Name" JSON..= name,
                            "UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes [(JSON..=) "Scopes" Prelude.<$> scopes]))}
instance JSON.ToJSON UserPoolResourceServer where
  toJSON UserPoolResourceServer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Identifier" JSON..= identifier, "Name" JSON..= name,
               "UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes [(JSON..=) "Scopes" Prelude.<$> scopes])))
instance Property "Identifier" UserPoolResourceServer where
  type PropertyType "Identifier" UserPoolResourceServer = Value Prelude.Text
  set newValue UserPoolResourceServer {..}
    = UserPoolResourceServer {identifier = newValue, ..}
instance Property "Name" UserPoolResourceServer where
  type PropertyType "Name" UserPoolResourceServer = Value Prelude.Text
  set newValue UserPoolResourceServer {..}
    = UserPoolResourceServer {name = newValue, ..}
instance Property "Scopes" UserPoolResourceServer where
  type PropertyType "Scopes" UserPoolResourceServer = [ResourceServerScopeTypeProperty]
  set newValue UserPoolResourceServer {..}
    = UserPoolResourceServer {scopes = Prelude.pure newValue, ..}
instance Property "UserPoolId" UserPoolResourceServer where
  type PropertyType "UserPoolId" UserPoolResourceServer = Value Prelude.Text
  set newValue UserPoolResourceServer {..}
    = UserPoolResourceServer {userPoolId = newValue, ..}