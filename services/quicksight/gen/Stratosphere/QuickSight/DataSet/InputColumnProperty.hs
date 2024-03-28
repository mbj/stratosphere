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
                         subType :: (Prelude.Maybe (Value Prelude.Text)),
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputColumnProperty ::
  Value Prelude.Text -> Value Prelude.Text -> InputColumnProperty
mkInputColumnProperty name type'
  = InputColumnProperty
      {name = name, type' = type', subType = Prelude.Nothing}
instance ToResourceProperties InputColumnProperty where
  toResourceProperties InputColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.InputColumn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "SubType" Prelude.<$> subType]))}
instance JSON.ToJSON InputColumnProperty where
  toJSON InputColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "SubType" Prelude.<$> subType])))
instance Property "Name" InputColumnProperty where
  type PropertyType "Name" InputColumnProperty = Value Prelude.Text
  set newValue InputColumnProperty {..}
    = InputColumnProperty {name = newValue, ..}
instance Property "SubType" InputColumnProperty where
  type PropertyType "SubType" InputColumnProperty = Value Prelude.Text
  set newValue InputColumnProperty {..}
    = InputColumnProperty {subType = Prelude.pure newValue, ..}
instance Property "Type" InputColumnProperty where
  type PropertyType "Type" InputColumnProperty = Value Prelude.Text
  set newValue InputColumnProperty {..}
    = InputColumnProperty {type' = newValue, ..}