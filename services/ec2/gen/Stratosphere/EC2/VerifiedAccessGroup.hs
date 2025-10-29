module Stratosphere.EC2.VerifiedAccessGroup (
        module Exports, VerifiedAccessGroup(..), mkVerifiedAccessGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessGroup.SseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VerifiedAccessGroup
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessgroup.html>
    VerifiedAccessGroup {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessgroup.html#cfn-ec2-verifiedaccessgroup-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessgroup.html#cfn-ec2-verifiedaccessgroup-policydocument>
                         policyDocument :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessgroup.html#cfn-ec2-verifiedaccessgroup-policyenabled>
                         policyEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessgroup.html#cfn-ec2-verifiedaccessgroup-ssespecification>
                         sseSpecification :: (Prelude.Maybe SseSpecificationProperty),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessgroup.html#cfn-ec2-verifiedaccessgroup-tags>
                         tags :: (Prelude.Maybe [Tag]),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-verifiedaccessgroup.html#cfn-ec2-verifiedaccessgroup-verifiedaccessinstanceid>
                         verifiedAccessInstanceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessGroup :: Value Prelude.Text -> VerifiedAccessGroup
mkVerifiedAccessGroup verifiedAccessInstanceId
  = VerifiedAccessGroup
      {verifiedAccessInstanceId = verifiedAccessInstanceId,
       description = Prelude.Nothing, policyDocument = Prelude.Nothing,
       policyEnabled = Prelude.Nothing,
       sseSpecification = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VerifiedAccessGroup where
  toResourceProperties VerifiedAccessGroup {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VerifiedAccessInstanceId" JSON..= verifiedAccessInstanceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                               (JSON..=) "PolicyEnabled" Prelude.<$> policyEnabled,
                               (JSON..=) "SseSpecification" Prelude.<$> sseSpecification,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VerifiedAccessGroup where
  toJSON VerifiedAccessGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VerifiedAccessInstanceId" JSON..= verifiedAccessInstanceId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                  (JSON..=) "PolicyEnabled" Prelude.<$> policyEnabled,
                  (JSON..=) "SseSpecification" Prelude.<$> sseSpecification,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" VerifiedAccessGroup where
  type PropertyType "Description" VerifiedAccessGroup = Value Prelude.Text
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {description = Prelude.pure newValue, ..}
instance Property "PolicyDocument" VerifiedAccessGroup where
  type PropertyType "PolicyDocument" VerifiedAccessGroup = Value Prelude.Text
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {policyDocument = Prelude.pure newValue, ..}
instance Property "PolicyEnabled" VerifiedAccessGroup where
  type PropertyType "PolicyEnabled" VerifiedAccessGroup = Value Prelude.Bool
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {policyEnabled = Prelude.pure newValue, ..}
instance Property "SseSpecification" VerifiedAccessGroup where
  type PropertyType "SseSpecification" VerifiedAccessGroup = SseSpecificationProperty
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup
        {sseSpecification = Prelude.pure newValue, ..}
instance Property "Tags" VerifiedAccessGroup where
  type PropertyType "Tags" VerifiedAccessGroup = [Tag]
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {tags = Prelude.pure newValue, ..}
instance Property "VerifiedAccessInstanceId" VerifiedAccessGroup where
  type PropertyType "VerifiedAccessInstanceId" VerifiedAccessGroup = Value Prelude.Text
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {verifiedAccessInstanceId = newValue, ..}