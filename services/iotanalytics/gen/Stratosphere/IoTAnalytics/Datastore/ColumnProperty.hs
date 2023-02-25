module Stratosphere.IoTAnalytics.Datastore.ColumnProperty (
        ColumnProperty(..), mkColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnProperty
  = ColumnProperty {name :: (Value Prelude.Text),
                    type' :: (Value Prelude.Text)}
mkColumnProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ColumnProperty
mkColumnProperty name type'
  = ColumnProperty {name = name, type' = type'}
instance ToResourceProperties ColumnProperty where
  toResourceProperties ColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.Column",
         properties = ["Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON ColumnProperty where
  toJSON ColumnProperty {..}
    = JSON.object ["Name" JSON..= name, "Type" JSON..= type']
instance Property "Name" ColumnProperty where
  type PropertyType "Name" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {name = newValue, ..}
instance Property "Type" ColumnProperty where
  type PropertyType "Type" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {type' = newValue, ..}