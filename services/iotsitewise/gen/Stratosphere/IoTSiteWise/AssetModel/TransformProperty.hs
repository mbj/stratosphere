module Stratosphere.IoTSiteWise.AssetModel.TransformProperty (
        module Exports, TransformProperty(..), mkTransformProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.ExpressionVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-transform.html>
    TransformProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-transform.html#cfn-iotsitewise-assetmodel-transform-expression>
                       expression :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-transform.html#cfn-iotsitewise-assetmodel-transform-variables>
                       variables :: [ExpressionVariableProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformProperty ::
  Value Prelude.Text
  -> [ExpressionVariableProperty] -> TransformProperty
mkTransformProperty expression variables
  = TransformProperty
      {haddock_workaround_ = (), expression = expression,
       variables = variables}
instance ToResourceProperties TransformProperty where
  toResourceProperties TransformProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.Transform",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression,
                       "Variables" JSON..= variables]}
instance JSON.ToJSON TransformProperty where
  toJSON TransformProperty {..}
    = JSON.object
        ["Expression" JSON..= expression, "Variables" JSON..= variables]
instance Property "Expression" TransformProperty where
  type PropertyType "Expression" TransformProperty = Value Prelude.Text
  set newValue TransformProperty {..}
    = TransformProperty {expression = newValue, ..}
instance Property "Variables" TransformProperty where
  type PropertyType "Variables" TransformProperty = [ExpressionVariableProperty]
  set newValue TransformProperty {..}
    = TransformProperty {variables = newValue, ..}