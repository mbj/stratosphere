module Stratosphere.Glue.Connection (
        module Exports, Connection(..), mkConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Connection.ConnectionInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connection
  = Connection {catalogId :: (Value Prelude.Text),
                connectionInput :: ConnectionInputProperty}
mkConnection ::
  Value Prelude.Text -> ConnectionInputProperty -> Connection
mkConnection catalogId connectionInput
  = Connection
      {catalogId = catalogId, connectionInput = connectionInput}
instance ToResourceProperties Connection where
  toResourceProperties Connection {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection", supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "ConnectionInput" JSON..= connectionInput]}
instance JSON.ToJSON Connection where
  toJSON Connection {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId,
         "ConnectionInput" JSON..= connectionInput]
instance Property "CatalogId" Connection where
  type PropertyType "CatalogId" Connection = Value Prelude.Text
  set newValue Connection {..}
    = Connection {catalogId = newValue, ..}
instance Property "ConnectionInput" Connection where
  type PropertyType "ConnectionInput" Connection = ConnectionInputProperty
  set newValue Connection {..}
    = Connection {connectionInput = newValue, ..}