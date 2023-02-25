module Stratosphere.QuickSight.DataSet.InputColumnProperty (
        InputColumnProperty(..), mkInputColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputColumnProperty
  = InputColumnProperty {name :: (Value Prelude.Text),
                         type' :: (Value Prelude.Text)}
mkInputColumnProperty ::
  Value Prelude.Text -> Value Prelude.Text -> InputColumnProperty
mkInputColumnProperty name type'
  = InputColumnProperty {name = name, type' = type'}
instance ToResourceProperties InputColumnProperty where
  toResourceProperties InputColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.InputColumn",
         properties = ["Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON InputColumnProperty where
  toJSON InputColumnProperty {..}
    = JSON.object ["Name" JSON..= name, "Type" JSON..= type']
instance Property "Name" InputColumnProperty where
  type PropertyType "Name" InputColumnProperty = Value Prelude.Text
  set newValue InputColumnProperty {..}
    = InputColumnProperty {name = newValue, ..}
instance Property "Type" InputColumnProperty where
  type PropertyType "Type" InputColumnProperty = Value Prelude.Text
  set newValue InputColumnProperty {..}
    = InputColumnProperty {type' = newValue, ..}