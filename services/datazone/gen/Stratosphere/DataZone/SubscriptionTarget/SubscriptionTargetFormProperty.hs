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
  = SubscriptionTargetFormProperty {content :: (Value Prelude.Text),
                                    formName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionTargetFormProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubscriptionTargetFormProperty
mkSubscriptionTargetFormProperty content formName
  = SubscriptionTargetFormProperty
      {content = content, formName = formName}
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