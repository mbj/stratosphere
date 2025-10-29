module Stratosphere.EC2.SpotFleet.TargetGroupsConfigProperty (
        module Exports, TargetGroupsConfigProperty(..),
        mkTargetGroupsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.TargetGroupProperty as Exports
import Stratosphere.ResourceProperties
data TargetGroupsConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroupsconfig.html>
    TargetGroupsConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroupsconfig.html#cfn-ec2-spotfleet-targetgroupsconfig-targetgroups>
                                targetGroups :: [TargetGroupProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupsConfigProperty ::
  [TargetGroupProperty] -> TargetGroupsConfigProperty
mkTargetGroupsConfigProperty targetGroups
  = TargetGroupsConfigProperty {targetGroups = targetGroups}
instance ToResourceProperties TargetGroupsConfigProperty where
  toResourceProperties TargetGroupsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.TargetGroupsConfig",
         supportsTags = Prelude.False,
         properties = ["TargetGroups" JSON..= targetGroups]}
instance JSON.ToJSON TargetGroupsConfigProperty where
  toJSON TargetGroupsConfigProperty {..}
    = JSON.object ["TargetGroups" JSON..= targetGroups]
instance Property "TargetGroups" TargetGroupsConfigProperty where
  type PropertyType "TargetGroups" TargetGroupsConfigProperty = [TargetGroupProperty]
  set newValue TargetGroupsConfigProperty {}
    = TargetGroupsConfigProperty {targetGroups = newValue, ..}