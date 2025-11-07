module Stratosphere.GuardDuty.TrustedEntitySet (
        module Exports, TrustedEntitySet(..), mkTrustedEntitySet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.TrustedEntitySet.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrustedEntitySet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html>
    TrustedEntitySet {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html#cfn-guardduty-trustedentityset-activate>
                      activate :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html#cfn-guardduty-trustedentityset-detectorid>
                      detectorId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html#cfn-guardduty-trustedentityset-expectedbucketowner>
                      expectedBucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html#cfn-guardduty-trustedentityset-format>
                      format :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html#cfn-guardduty-trustedentityset-location>
                      location :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html#cfn-guardduty-trustedentityset-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-trustedentityset.html#cfn-guardduty-trustedentityset-tags>
                      tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustedEntitySet ::
  Value Prelude.Text -> Value Prelude.Text -> TrustedEntitySet
mkTrustedEntitySet format location
  = TrustedEntitySet
      {haddock_workaround_ = (), format = format, location = location,
       activate = Prelude.Nothing, detectorId = Prelude.Nothing,
       expectedBucketOwner = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TrustedEntitySet where
  toResourceProperties TrustedEntitySet {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::TrustedEntitySet",
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
instance JSON.ToJSON TrustedEntitySet where
  toJSON TrustedEntitySet {..}
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
instance Property "Activate" TrustedEntitySet where
  type PropertyType "Activate" TrustedEntitySet = Value Prelude.Bool
  set newValue TrustedEntitySet {..}
    = TrustedEntitySet {activate = Prelude.pure newValue, ..}
instance Property "DetectorId" TrustedEntitySet where
  type PropertyType "DetectorId" TrustedEntitySet = Value Prelude.Text
  set newValue TrustedEntitySet {..}
    = TrustedEntitySet {detectorId = Prelude.pure newValue, ..}
instance Property "ExpectedBucketOwner" TrustedEntitySet where
  type PropertyType "ExpectedBucketOwner" TrustedEntitySet = Value Prelude.Text
  set newValue TrustedEntitySet {..}
    = TrustedEntitySet
        {expectedBucketOwner = Prelude.pure newValue, ..}
instance Property "Format" TrustedEntitySet where
  type PropertyType "Format" TrustedEntitySet = Value Prelude.Text
  set newValue TrustedEntitySet {..}
    = TrustedEntitySet {format = newValue, ..}
instance Property "Location" TrustedEntitySet where
  type PropertyType "Location" TrustedEntitySet = Value Prelude.Text
  set newValue TrustedEntitySet {..}
    = TrustedEntitySet {location = newValue, ..}
instance Property "Name" TrustedEntitySet where
  type PropertyType "Name" TrustedEntitySet = Value Prelude.Text
  set newValue TrustedEntitySet {..}
    = TrustedEntitySet {name = Prelude.pure newValue, ..}
instance Property "Tags" TrustedEntitySet where
  type PropertyType "Tags" TrustedEntitySet = [TagItemProperty]
  set newValue TrustedEntitySet {..}
    = TrustedEntitySet {tags = Prelude.pure newValue, ..}