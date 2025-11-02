module Stratosphere.GuardDuty.ThreatIntelSet (
        module Exports, ThreatIntelSet(..), mkThreatIntelSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.ThreatIntelSet.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThreatIntelSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html>
    ThreatIntelSet {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-activate>
                    activate :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-detectorid>
                    detectorId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-format>
                    format :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-location>
                    location :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-tags>
                    tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThreatIntelSet ::
  Value Prelude.Text -> Value Prelude.Text -> ThreatIntelSet
mkThreatIntelSet format location
  = ThreatIntelSet
      {haddock_workaround_ = (), format = format, location = location,
       activate = Prelude.Nothing, detectorId = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ThreatIntelSet where
  toResourceProperties ThreatIntelSet {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::ThreatIntelSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Format" JSON..= format, "Location" JSON..= location]
                           (Prelude.catMaybes
                              [(JSON..=) "Activate" Prelude.<$> activate,
                               (JSON..=) "DetectorId" Prelude.<$> detectorId,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ThreatIntelSet where
  toJSON ThreatIntelSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Format" JSON..= format, "Location" JSON..= location]
              (Prelude.catMaybes
                 [(JSON..=) "Activate" Prelude.<$> activate,
                  (JSON..=) "DetectorId" Prelude.<$> detectorId,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Activate" ThreatIntelSet where
  type PropertyType "Activate" ThreatIntelSet = Value Prelude.Bool
  set newValue ThreatIntelSet {..}
    = ThreatIntelSet {activate = Prelude.pure newValue, ..}
instance Property "DetectorId" ThreatIntelSet where
  type PropertyType "DetectorId" ThreatIntelSet = Value Prelude.Text
  set newValue ThreatIntelSet {..}
    = ThreatIntelSet {detectorId = Prelude.pure newValue, ..}
instance Property "Format" ThreatIntelSet where
  type PropertyType "Format" ThreatIntelSet = Value Prelude.Text
  set newValue ThreatIntelSet {..}
    = ThreatIntelSet {format = newValue, ..}
instance Property "Location" ThreatIntelSet where
  type PropertyType "Location" ThreatIntelSet = Value Prelude.Text
  set newValue ThreatIntelSet {..}
    = ThreatIntelSet {location = newValue, ..}
instance Property "Name" ThreatIntelSet where
  type PropertyType "Name" ThreatIntelSet = Value Prelude.Text
  set newValue ThreatIntelSet {..}
    = ThreatIntelSet {name = Prelude.pure newValue, ..}
instance Property "Tags" ThreatIntelSet where
  type PropertyType "Tags" ThreatIntelSet = [TagItemProperty]
  set newValue ThreatIntelSet {..}
    = ThreatIntelSet {tags = Prelude.pure newValue, ..}