module Stratosphere.Events.Connection (
        module Exports, Connection(..), mkConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Connection.AuthParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connection
  = Connection {authParameters :: AuthParametersProperty,
                authorizationType :: (Value Prelude.Text),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnection ::
  AuthParametersProperty -> Value Prelude.Text -> Connection
mkConnection authParameters authorizationType
  = Connection
      {authParameters = authParameters,
       authorizationType = authorizationType,
       description = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties Connection where
  toResourceProperties Connection {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthParameters" JSON..= authParameters,
                            "AuthorizationType" JSON..= authorizationType]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON Connection where
  toJSON Connection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthParameters" JSON..= authParameters,
               "AuthorizationType" JSON..= authorizationType]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "AuthParameters" Connection where
  type PropertyType "AuthParameters" Connection = AuthParametersProperty
  set newValue Connection {..}
    = Connection {authParameters = newValue, ..}
instance Property "AuthorizationType" Connection where
  type PropertyType "AuthorizationType" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {authorizationType = newValue, ..}
instance Property "Description" Connection where
  type PropertyType "Description" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {description = Prelude.pure newValue, ..}
instance Property "Name" Connection where
  type PropertyType "Name" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {name = Prelude.pure newValue, ..}