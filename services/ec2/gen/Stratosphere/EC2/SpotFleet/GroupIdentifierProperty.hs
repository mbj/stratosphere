module Stratosphere.EC2.SpotFleet.GroupIdentifierProperty (
        GroupIdentifierProperty(..), mkGroupIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupIdentifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-groupidentifier.html>
    GroupIdentifierProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-groupidentifier.html#cfn-ec2-spotfleet-groupidentifier-groupid>
                             groupId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupIdentifierProperty ::
  Value Prelude.Text -> GroupIdentifierProperty
mkGroupIdentifierProperty groupId
  = GroupIdentifierProperty
      {haddock_workaround_ = (), groupId = groupId}
instance ToResourceProperties GroupIdentifierProperty where
  toResourceProperties GroupIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.GroupIdentifier",
         supportsTags = Prelude.False,
         properties = ["GroupId" JSON..= groupId]}
instance JSON.ToJSON GroupIdentifierProperty where
  toJSON GroupIdentifierProperty {..}
    = JSON.object ["GroupId" JSON..= groupId]
instance Property "GroupId" GroupIdentifierProperty where
  type PropertyType "GroupId" GroupIdentifierProperty = Value Prelude.Text
  set newValue GroupIdentifierProperty {..}
    = GroupIdentifierProperty {groupId = newValue, ..}