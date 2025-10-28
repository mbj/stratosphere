module Stratosphere.EC2.IPAMPool.SourceResourceProperty (
        SourceResourceProperty(..), mkSourceResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceResourceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipampool-sourceresource.html>
    SourceResourceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipampool-sourceresource.html#cfn-ec2-ipampool-sourceresource-resourceid>
                            resourceId :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipampool-sourceresource.html#cfn-ec2-ipampool-sourceresource-resourceowner>
                            resourceOwner :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipampool-sourceresource.html#cfn-ec2-ipampool-sourceresource-resourceregion>
                            resourceRegion :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ipampool-sourceresource.html#cfn-ec2-ipampool-sourceresource-resourcetype>
                            resourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceResourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> SourceResourceProperty
mkSourceResourceProperty
  resourceId
  resourceOwner
  resourceRegion
  resourceType
  = SourceResourceProperty
      {resourceId = resourceId, resourceOwner = resourceOwner,
       resourceRegion = resourceRegion, resourceType = resourceType}
instance ToResourceProperties SourceResourceProperty where
  toResourceProperties SourceResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMPool.SourceResource",
         supportsTags = Prelude.False,
         properties = ["ResourceId" JSON..= resourceId,
                       "ResourceOwner" JSON..= resourceOwner,
                       "ResourceRegion" JSON..= resourceRegion,
                       "ResourceType" JSON..= resourceType]}
instance JSON.ToJSON SourceResourceProperty where
  toJSON SourceResourceProperty {..}
    = JSON.object
        ["ResourceId" JSON..= resourceId,
         "ResourceOwner" JSON..= resourceOwner,
         "ResourceRegion" JSON..= resourceRegion,
         "ResourceType" JSON..= resourceType]
instance Property "ResourceId" SourceResourceProperty where
  type PropertyType "ResourceId" SourceResourceProperty = Value Prelude.Text
  set newValue SourceResourceProperty {..}
    = SourceResourceProperty {resourceId = newValue, ..}
instance Property "ResourceOwner" SourceResourceProperty where
  type PropertyType "ResourceOwner" SourceResourceProperty = Value Prelude.Text
  set newValue SourceResourceProperty {..}
    = SourceResourceProperty {resourceOwner = newValue, ..}
instance Property "ResourceRegion" SourceResourceProperty where
  type PropertyType "ResourceRegion" SourceResourceProperty = Value Prelude.Text
  set newValue SourceResourceProperty {..}
    = SourceResourceProperty {resourceRegion = newValue, ..}
instance Property "ResourceType" SourceResourceProperty where
  type PropertyType "ResourceType" SourceResourceProperty = Value Prelude.Text
  set newValue SourceResourceProperty {..}
    = SourceResourceProperty {resourceType = newValue, ..}