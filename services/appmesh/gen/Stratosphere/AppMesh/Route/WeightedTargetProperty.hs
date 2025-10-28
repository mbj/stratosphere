module Stratosphere.AppMesh.Route.WeightedTargetProperty (
        WeightedTargetProperty(..), mkWeightedTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WeightedTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html>
    WeightedTargetProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-port>
                            port :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-virtualnode>
                            virtualNode :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-weight>
                            weight :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWeightedTargetProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> WeightedTargetProperty
mkWeightedTargetProperty virtualNode weight
  = WeightedTargetProperty
      {haddock_workaround_ = (), virtualNode = virtualNode,
       weight = weight, port = Prelude.Nothing}
instance ToResourceProperties WeightedTargetProperty where
  toResourceProperties WeightedTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.WeightedTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VirtualNode" JSON..= virtualNode, "Weight" JSON..= weight]
                           (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port]))}
instance JSON.ToJSON WeightedTargetProperty where
  toJSON WeightedTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VirtualNode" JSON..= virtualNode, "Weight" JSON..= weight]
              (Prelude.catMaybes [(JSON..=) "Port" Prelude.<$> port])))
instance Property "Port" WeightedTargetProperty where
  type PropertyType "Port" WeightedTargetProperty = Value Prelude.Integer
  set newValue WeightedTargetProperty {..}
    = WeightedTargetProperty {port = Prelude.pure newValue, ..}
instance Property "VirtualNode" WeightedTargetProperty where
  type PropertyType "VirtualNode" WeightedTargetProperty = Value Prelude.Text
  set newValue WeightedTargetProperty {..}
    = WeightedTargetProperty {virtualNode = newValue, ..}
instance Property "Weight" WeightedTargetProperty where
  type PropertyType "Weight" WeightedTargetProperty = Value Prelude.Integer
  set newValue WeightedTargetProperty {..}
    = WeightedTargetProperty {weight = newValue, ..}