module Stratosphere.Evidently.Launch.GroupToWeightProperty (
        GroupToWeightProperty(..), mkGroupToWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupToWeightProperty
  = GroupToWeightProperty {groupName :: (Value Prelude.Text),
                           splitWeight :: (Value Prelude.Integer)}
mkGroupToWeightProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> GroupToWeightProperty
mkGroupToWeightProperty groupName splitWeight
  = GroupToWeightProperty
      {groupName = groupName, splitWeight = splitWeight}
instance ToResourceProperties GroupToWeightProperty where
  toResourceProperties GroupToWeightProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.GroupToWeight",
         properties = ["GroupName" JSON..= groupName,
                       "SplitWeight" JSON..= splitWeight]}
instance JSON.ToJSON GroupToWeightProperty where
  toJSON GroupToWeightProperty {..}
    = JSON.object
        ["GroupName" JSON..= groupName, "SplitWeight" JSON..= splitWeight]
instance Property "GroupName" GroupToWeightProperty where
  type PropertyType "GroupName" GroupToWeightProperty = Value Prelude.Text
  set newValue GroupToWeightProperty {..}
    = GroupToWeightProperty {groupName = newValue, ..}
instance Property "SplitWeight" GroupToWeightProperty where
  type PropertyType "SplitWeight" GroupToWeightProperty = Value Prelude.Integer
  set newValue GroupToWeightProperty {..}
    = GroupToWeightProperty {splitWeight = newValue, ..}