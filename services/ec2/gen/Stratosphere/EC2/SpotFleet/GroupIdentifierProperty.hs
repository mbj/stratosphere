module Stratosphere.EC2.SpotFleet.GroupIdentifierProperty (
        GroupIdentifierProperty(..), mkGroupIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupIdentifierProperty
  = GroupIdentifierProperty {groupId :: (Value Prelude.Text)}
mkGroupIdentifierProperty ::
  Value Prelude.Text -> GroupIdentifierProperty
mkGroupIdentifierProperty groupId
  = GroupIdentifierProperty {groupId = groupId}
instance ToResourceProperties GroupIdentifierProperty where
  toResourceProperties GroupIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.GroupIdentifier",
         properties = ["GroupId" JSON..= groupId]}
instance JSON.ToJSON GroupIdentifierProperty where
  toJSON GroupIdentifierProperty {..}
    = JSON.object ["GroupId" JSON..= groupId]
instance Property "GroupId" GroupIdentifierProperty where
  type PropertyType "GroupId" GroupIdentifierProperty = Value Prelude.Text
  set newValue GroupIdentifierProperty {}
    = GroupIdentifierProperty {groupId = newValue, ..}