module Stratosphere.Evidently.Launch.GroupToWeightProperty (
        GroupToWeightProperty(..), mkGroupToWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupToWeightProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-grouptoweight.html>
    GroupToWeightProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-grouptoweight.html#cfn-evidently-launch-grouptoweight-groupname>
                           groupName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-grouptoweight.html#cfn-evidently-launch-grouptoweight-splitweight>
                           splitWeight :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupToWeightProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> GroupToWeightProperty
mkGroupToWeightProperty groupName splitWeight
  = GroupToWeightProperty
      {haddock_workaround_ = (), groupName = groupName,
       splitWeight = splitWeight}
instance ToResourceProperties GroupToWeightProperty where
  toResourceProperties GroupToWeightProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.GroupToWeight",
         supportsTags = Prelude.False,
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