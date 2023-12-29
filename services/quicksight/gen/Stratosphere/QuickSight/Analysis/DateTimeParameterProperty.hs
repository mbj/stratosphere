module Stratosphere.QuickSight.Analysis.DateTimeParameterProperty (
        DateTimeParameterProperty(..), mkDateTimeParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeParameterProperty
  = DateTimeParameterProperty {name :: (Value Prelude.Text),
                               values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeParameterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> DateTimeParameterProperty
mkDateTimeParameterProperty name values
  = DateTimeParameterProperty {name = name, values = values}
instance ToResourceProperties DateTimeParameterProperty where
  toResourceProperties DateTimeParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DateTimeParameter",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON DateTimeParameterProperty where
  toJSON DateTimeParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Values" JSON..= values]
instance Property "Name" DateTimeParameterProperty where
  type PropertyType "Name" DateTimeParameterProperty = Value Prelude.Text
  set newValue DateTimeParameterProperty {..}
    = DateTimeParameterProperty {name = newValue, ..}
instance Property "Values" DateTimeParameterProperty where
  type PropertyType "Values" DateTimeParameterProperty = ValueList Prelude.Text
  set newValue DateTimeParameterProperty {..}
    = DateTimeParameterProperty {values = newValue, ..}