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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-expressionvariable.html>
    ExpressionVariableProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-expressionvariable.html#cfn-iotsitewise-assetmodel-expressionvariable-name>
                                name :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-expressionvariable.html#cfn-iotsitewise-assetmodel-expressionvariable-value>
                                value :: VariableValueProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExpressionVariableProperty ::
  Value Prelude.Text
  -> VariableValueProperty -> ExpressionVariableProperty
mkExpressionVariableProperty name value
  = ExpressionVariableProperty
      {haddock_workaround_ = (), name = name, value = value}
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