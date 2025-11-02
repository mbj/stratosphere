module Stratosphere.CloudFront.Distribution.OriginGroupMemberProperty (
        OriginGroupMemberProperty(..), mkOriginGroupMemberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginGroupMemberProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupmember.html>
    OriginGroupMemberProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupmember.html#cfn-cloudfront-distribution-origingroupmember-originid>
                               originId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginGroupMemberProperty ::
  Value Prelude.Text -> OriginGroupMemberProperty
mkOriginGroupMemberProperty originId
  = OriginGroupMemberProperty
      {haddock_workaround_ = (), originId = originId}
instance ToResourceProperties OriginGroupMemberProperty where
  toResourceProperties OriginGroupMemberProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginGroupMember",
         supportsTags = Prelude.False,
         properties = ["OriginId" JSON..= originId]}
instance JSON.ToJSON OriginGroupMemberProperty where
  toJSON OriginGroupMemberProperty {..}
    = JSON.object ["OriginId" JSON..= originId]
instance Property "OriginId" OriginGroupMemberProperty where
  type PropertyType "OriginId" OriginGroupMemberProperty = Value Prelude.Text
  set newValue OriginGroupMemberProperty {..}
    = OriginGroupMemberProperty {originId = newValue, ..}