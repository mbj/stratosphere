module Stratosphere.DataZone.SubscriptionTarget.SubscriptionTargetFormProperty (
        SubscriptionTargetFormProperty(..),
        mkSubscriptionTargetFormProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionTargetFormProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-subscriptiontarget-subscriptiontargetform.html>
    SubscriptionTargetFormProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-subscriptiontarget-subscriptiontargetform.html#cfn-datazone-subscriptiontarget-subscriptiontargetform-content>
                                    content :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-subscriptiontarget-subscriptiontargetform.html#cfn-datazone-subscriptiontarget-subscriptiontargetform-formname>
                                    formName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionTargetFormProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubscriptionTargetFormProperty
mkSubscriptionTargetFormProperty content formName
  = SubscriptionTargetFormProperty
      {haddock_workaround_ = (), content = content, formName = formName}
instance ToResourceProperties SubscriptionTargetFormProperty where
  toResourceProperties SubscriptionTargetFormProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::SubscriptionTarget.SubscriptionTargetForm",
         supportsTags = Prelude.False,
         properties = ["Content" JSON..= content,
                       "FormName" JSON..= formName]}
instance JSON.ToJSON SubscriptionTargetFormProperty where
  toJSON SubscriptionTargetFormProperty {..}
    = JSON.object
        ["Content" JSON..= content, "FormName" JSON..= formName]
instance Property "Content" SubscriptionTargetFormProperty where
  type PropertyType "Content" SubscriptionTargetFormProperty = Value Prelude.Text
  set newValue SubscriptionTargetFormProperty {..}
    = SubscriptionTargetFormProperty {content = newValue, ..}
instance Property "FormName" SubscriptionTargetFormProperty where
  type PropertyType "FormName" SubscriptionTargetFormProperty = Value Prelude.Text
  set newValue SubscriptionTargetFormProperty {..}
    = SubscriptionTargetFormProperty {formName = newValue, ..}