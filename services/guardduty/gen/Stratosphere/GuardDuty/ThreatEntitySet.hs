module Stratosphere.GuardDuty.ThreatEntitySet (
        module Exports, ThreatEntitySet(..), mkThreatEntitySet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.ThreatEntitySet.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThreatEntitySet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html>
    ThreatEntitySet {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html#cfn-guardduty-threatentityset-activate>
                     activate :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html#cfn-guardduty-threatentityset-detectorid>
                     detectorId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html#cfn-guardduty-threatentityset-expectedbucketowner>
                     expectedBucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html#cfn-guardduty-threatentityset-format>
                     format :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html#cfn-guardduty-threatentityset-location>
                     location :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html#cfn-guardduty-threatentityset-name>
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatentityset.html#cfn-guardduty-threatentityset-tags>
                     tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThreatEntitySet ::
  Value Prelude.Text -> Value Prelude.Text -> ThreatEntitySet
mkThreatEntitySet format location
  = ThreatEntitySet
      {haddock_workaround_ = (), format = format, location = location,
       activate = Prelude.Nothing, detectorId = Prelude.Nothing,
       expectedBucketOwner = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ThreatEntitySet where
  toResourceProperties ThreatEntitySet {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::ThreatEntitySet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Format" JSON..= format, "Location" JSON..= location]
                           (Prelude.catMaybes
                              [(JSON..=) "Activate" Prelude.<$> activate,
                               (JSON..=) "DetectorId" Prelude.<$> detectorId,
                               (JSON..=) "ExpectedBucketOwner" Prelude.<$> expectedBucketOwner,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ThreatEntitySet where
  toJSON ThreatEntitySet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Format" JSON..= format, "Location" JSON..= location]
              (Prelude.catMaybes
                 [(JSON..=) "Activate" Prelude.<$> activate,
                  (JSON..=) "DetectorId" Prelude.<$> detectorId,
                  (JSON..=) "ExpectedBucketOwner" Prelude.<$> expectedBucketOwner,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Activate" ThreatEntitySet where
  type PropertyType "Activate" ThreatEntitySet = Value Prelude.Bool
  set newValue ThreatEntitySet {..}
    = ThreatEntitySet {activate = Prelude.pure newValue, ..}
instance Property "DetectorId" ThreatEntitySet where
  type PropertyType "DetectorId" ThreatEntitySet = Value Prelude.Text
  set newValue ThreatEntitySet {..}
    = ThreatEntitySet {detectorId = Prelude.pure newValue, ..}
instance Property "ExpectedBucketOwner" ThreatEntitySet where
  type PropertyType "ExpectedBucketOwner" ThreatEntitySet = Value Prelude.Text
  set newValue ThreatEntitySet {..}
    = ThreatEntitySet {expectedBucketOwner = Prelude.pure newValue, ..}
instance Property "Format" ThreatEntitySet where
  type PropertyType "Format" ThreatEntitySet = Value Prelude.Text
  set newValue ThreatEntitySet {..}
    = ThreatEntitySet {format = newValue, ..}
instance Property "Location" ThreatEntitySet where
  type PropertyType "Location" ThreatEntitySet = Value Prelude.Text
  set newValue ThreatEntitySet {..}
    = ThreatEntitySet {location = newValue, ..}
instance Property "Name" ThreatEntitySet where
  type PropertyType "Name" ThreatEntitySet = Value Prelude.Text
  set newValue ThreatEntitySet {..}
    = ThreatEntitySet {name = Prelude.pure newValue, ..}
instance Property "Tags" ThreatEntitySet where
  type PropertyType "Tags" ThreatEntitySet = [TagItemProperty]
  set newValue ThreatEntitySet {..}
    = ThreatEntitySet {tags = Prelude.pure newValue, ..}