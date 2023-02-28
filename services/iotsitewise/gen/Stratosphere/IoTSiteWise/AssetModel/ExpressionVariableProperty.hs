module Stratosphere.IoTSiteWise.AssetModel.ExpressionVariableProperty (
        module Exports, ExpressionVariableProperty(..),
        mkExpressionVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.VariableValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExpressionVariableProperty
  = ExpressionVariableProperty {name :: (Value Prelude.Text),
                                value :: VariableValueProperty}
mkExpressionVariableProperty ::
  Value Prelude.Text
  -> VariableValueProperty -> ExpressionVariableProperty
mkExpressionVariableProperty name value
  = ExpressionVariableProperty {name = name, value = value}
instance ToResourceProperties ExpressionVariableProperty where
  toResourceProperties ExpressionVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.ExpressionVariable",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON ExpressionVariableProperty where
  toJSON ExpressionVariableProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" ExpressionVariableProperty where
  type PropertyType "Name" ExpressionVariableProperty = Value Prelude.Text
  set newValue ExpressionVariableProperty {..}
    = ExpressionVariableProperty {name = newValue, ..}
instance Property "Value" ExpressionVariableProperty where
  type PropertyType "Value" ExpressionVariableProperty = VariableValueProperty
  set newValue ExpressionVariableProperty {..}
    = ExpressionVariableProperty {value = newValue, ..}