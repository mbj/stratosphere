module Stratosphere.Events.Connection (
        module Exports, Connection(..), mkConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Connection.AuthParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Connection.InvocationConnectivityParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-connection.html>
    Connection {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-connection.html#cfn-events-connection-authparameters>
                authParameters :: (Prelude.Maybe AuthParametersProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-connection.html#cfn-events-connection-authorizationtype>
                authorizationType :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-connection.html#cfn-events-connection-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-connection.html#cfn-events-connection-invocationconnectivityparameters>
                invocationConnectivityParameters :: (Prelude.Maybe InvocationConnectivityParametersProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-connection.html#cfn-events-connection-name>
                name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnection :: Connection
mkConnection
  = Connection
      {haddock_workaround_ = (), authParameters = Prelude.Nothing,
       authorizationType = Prelude.Nothing, description = Prelude.Nothing,
       invocationConnectivityParameters = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties Connection where
  toResourceProperties Connection {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthParameters" Prelude.<$> authParameters,
                            (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "InvocationConnectivityParameters"
                              Prelude.<$> invocationConnectivityParameters,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON Connection where
  toJSON Connection {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthParameters" Prelude.<$> authParameters,
               (JSON..=) "AuthorizationType" Prelude.<$> authorizationType,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "InvocationConnectivityParameters"
                 Prelude.<$> invocationConnectivityParameters,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "AuthParameters" Connection where
  type PropertyType "AuthParameters" Connection = AuthParametersProperty
  set newValue Connection {..}
    = Connection {authParameters = Prelude.pure newValue, ..}
instance Property "AuthorizationType" Connection where
  type PropertyType "AuthorizationType" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {authorizationType = Prelude.pure newValue, ..}
instance Property "Description" Connection where
  type PropertyType "Description" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {description = Prelude.pure newValue, ..}
instance Property "InvocationConnectivityParameters" Connection where
  type PropertyType "InvocationConnectivityParameters" Connection = InvocationConnectivityParametersProperty
  set newValue Connection {..}
    = Connection
        {invocationConnectivityParameters = Prelude.pure newValue, ..}
instance Property "Name" Connection where
  type PropertyType "Name" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {name = Prelude.pure newValue, ..}