module Stratosphere.CloudFront.Distribution.OriginGroupProperty (
        module Exports, OriginGroupProperty(..), mkOriginGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginGroupFailoverCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginGroupMembersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html>
    OriginGroupProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html#cfn-cloudfront-distribution-origingroup-failovercriteria>
                         failoverCriteria :: OriginGroupFailoverCriteriaProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html#cfn-cloudfront-distribution-origingroup-id>
                         id :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html#cfn-cloudfront-distribution-origingroup-members>
                         members :: OriginGroupMembersProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroup.html#cfn-cloudfront-distribution-origingroup-selectioncriteria>
                         selectionCriteria :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginGroupProperty ::
  OriginGroupFailoverCriteriaProperty
  -> Value Prelude.Text
     -> OriginGroupMembersProperty -> OriginGroupProperty
mkOriginGroupProperty failoverCriteria id members
  = OriginGroupProperty
      {haddock_workaround_ = (), failoverCriteria = failoverCriteria,
       id = id, members = members, selectionCriteria = Prelude.Nothing}
instance ToResourceProperties OriginGroupProperty where
  toResourceProperties OriginGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FailoverCriteria" JSON..= failoverCriteria, "Id" JSON..= id,
                            "Members" JSON..= members]
                           (Prelude.catMaybes
                              [(JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria]))}
instance JSON.ToJSON OriginGroupProperty where
  toJSON OriginGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FailoverCriteria" JSON..= failoverCriteria, "Id" JSON..= id,
               "Members" JSON..= members]
              (Prelude.catMaybes
                 [(JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria])))
instance Property "FailoverCriteria" OriginGroupProperty where
  type PropertyType "FailoverCriteria" OriginGroupProperty = OriginGroupFailoverCriteriaProperty
  set newValue OriginGroupProperty {..}
    = OriginGroupProperty {failoverCriteria = newValue, ..}
instance Property "Id" OriginGroupProperty where
  type PropertyType "Id" OriginGroupProperty = Value Prelude.Text
  set newValue OriginGroupProperty {..}
    = OriginGroupProperty {id = newValue, ..}
instance Property "Members" OriginGroupProperty where
  type PropertyType "Members" OriginGroupProperty = OriginGroupMembersProperty
  set newValue OriginGroupProperty {..}
    = OriginGroupProperty {members = newValue, ..}
instance Property "SelectionCriteria" OriginGroupProperty where
  type PropertyType "SelectionCriteria" OriginGroupProperty = Value Prelude.Text
  set newValue OriginGroupProperty {..}
    = OriginGroupProperty
        {selectionCriteria = Prelude.pure newValue, ..}