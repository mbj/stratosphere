module Stratosphere.Shield.ProactiveEngagement (
        module Exports, ProactiveEngagement(..), mkProactiveEngagement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Shield.ProactiveEngagement.EmergencyContactProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProactiveEngagement
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-shield-proactiveengagement.html>
    ProactiveEngagement {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-shield-proactiveengagement.html#cfn-shield-proactiveengagement-emergencycontactlist>
                         emergencyContactList :: [EmergencyContactProperty],
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-shield-proactiveengagement.html#cfn-shield-proactiveengagement-proactiveengagementstatus>
                         proactiveEngagementStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProactiveEngagement ::
  [EmergencyContactProperty]
  -> Value Prelude.Text -> ProactiveEngagement
mkProactiveEngagement
  emergencyContactList
  proactiveEngagementStatus
  = ProactiveEngagement
      {haddock_workaround_ = (),
       emergencyContactList = emergencyContactList,
       proactiveEngagementStatus = proactiveEngagementStatus}
instance ToResourceProperties ProactiveEngagement where
  toResourceProperties ProactiveEngagement {..}
    = ResourceProperties
        {awsType = "AWS::Shield::ProactiveEngagement",
         supportsTags = Prelude.False,
         properties = ["EmergencyContactList" JSON..= emergencyContactList,
                       "ProactiveEngagementStatus" JSON..= proactiveEngagementStatus]}
instance JSON.ToJSON ProactiveEngagement where
  toJSON ProactiveEngagement {..}
    = JSON.object
        ["EmergencyContactList" JSON..= emergencyContactList,
         "ProactiveEngagementStatus" JSON..= proactiveEngagementStatus]
instance Property "EmergencyContactList" ProactiveEngagement where
  type PropertyType "EmergencyContactList" ProactiveEngagement = [EmergencyContactProperty]
  set newValue ProactiveEngagement {..}
    = ProactiveEngagement {emergencyContactList = newValue, ..}
instance Property "ProactiveEngagementStatus" ProactiveEngagement where
  type PropertyType "ProactiveEngagementStatus" ProactiveEngagement = Value Prelude.Text
  set newValue ProactiveEngagement {..}
    = ProactiveEngagement {proactiveEngagementStatus = newValue, ..}