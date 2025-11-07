module Stratosphere.GuardDuty.PublishingDestination.CFNDestinationPropertiesProperty (
        CFNDestinationPropertiesProperty(..),
        mkCFNDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CFNDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-publishingdestination-cfndestinationproperties.html>
    CFNDestinationPropertiesProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-publishingdestination-cfndestinationproperties.html#cfn-guardduty-publishingdestination-cfndestinationproperties-destinationarn>
                                      destinationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-publishingdestination-cfndestinationproperties.html#cfn-guardduty-publishingdestination-cfndestinationproperties-kmskeyarn>
                                      kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNDestinationPropertiesProperty ::
  CFNDestinationPropertiesProperty
mkCFNDestinationPropertiesProperty
  = CFNDestinationPropertiesProperty
      {haddock_workaround_ = (), destinationArn = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties CFNDestinationPropertiesProperty where
  toResourceProperties CFNDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::PublishingDestination.CFNDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON CFNDestinationPropertiesProperty where
  toJSON CFNDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "DestinationArn" CFNDestinationPropertiesProperty where
  type PropertyType "DestinationArn" CFNDestinationPropertiesProperty = Value Prelude.Text
  set newValue CFNDestinationPropertiesProperty {..}
    = CFNDestinationPropertiesProperty
        {destinationArn = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" CFNDestinationPropertiesProperty where
  type PropertyType "KmsKeyArn" CFNDestinationPropertiesProperty = Value Prelude.Text
  set newValue CFNDestinationPropertiesProperty {..}
    = CFNDestinationPropertiesProperty
        {kmsKeyArn = Prelude.pure newValue, ..}