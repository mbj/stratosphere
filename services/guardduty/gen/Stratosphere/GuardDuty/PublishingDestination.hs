module Stratosphere.GuardDuty.PublishingDestination (
        module Exports, PublishingDestination(..), mkPublishingDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.PublishingDestination.CFNDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.GuardDuty.PublishingDestination.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublishingDestination
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-publishingdestination.html>
    PublishingDestination {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-publishingdestination.html#cfn-guardduty-publishingdestination-destinationproperties>
                           destinationProperties :: CFNDestinationPropertiesProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-publishingdestination.html#cfn-guardduty-publishingdestination-destinationtype>
                           destinationType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-publishingdestination.html#cfn-guardduty-publishingdestination-detectorid>
                           detectorId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-publishingdestination.html#cfn-guardduty-publishingdestination-tags>
                           tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublishingDestination ::
  CFNDestinationPropertiesProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> PublishingDestination
mkPublishingDestination
  destinationProperties
  destinationType
  detectorId
  = PublishingDestination
      {haddock_workaround_ = (),
       destinationProperties = destinationProperties,
       destinationType = destinationType, detectorId = detectorId,
       tags = Prelude.Nothing}
instance ToResourceProperties PublishingDestination where
  toResourceProperties PublishingDestination {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::PublishingDestination",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationProperties" JSON..= destinationProperties,
                            "DestinationType" JSON..= destinationType,
                            "DetectorId" JSON..= detectorId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PublishingDestination where
  toJSON PublishingDestination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationProperties" JSON..= destinationProperties,
               "DestinationType" JSON..= destinationType,
               "DetectorId" JSON..= detectorId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DestinationProperties" PublishingDestination where
  type PropertyType "DestinationProperties" PublishingDestination = CFNDestinationPropertiesProperty
  set newValue PublishingDestination {..}
    = PublishingDestination {destinationProperties = newValue, ..}
instance Property "DestinationType" PublishingDestination where
  type PropertyType "DestinationType" PublishingDestination = Value Prelude.Text
  set newValue PublishingDestination {..}
    = PublishingDestination {destinationType = newValue, ..}
instance Property "DetectorId" PublishingDestination where
  type PropertyType "DetectorId" PublishingDestination = Value Prelude.Text
  set newValue PublishingDestination {..}
    = PublishingDestination {detectorId = newValue, ..}
instance Property "Tags" PublishingDestination where
  type PropertyType "Tags" PublishingDestination = [TagItemProperty]
  set newValue PublishingDestination {..}
    = PublishingDestination {tags = Prelude.pure newValue, ..}