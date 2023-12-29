module Stratosphere.SES.EmailIdentity.MailFromAttributesProperty (
        MailFromAttributesProperty(..), mkMailFromAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MailFromAttributesProperty
  = MailFromAttributesProperty {behaviorOnMxFailure :: (Prelude.Maybe (Value Prelude.Text)),
                                mailFromDomain :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailFromAttributesProperty :: MailFromAttributesProperty
mkMailFromAttributesProperty
  = MailFromAttributesProperty
      {behaviorOnMxFailure = Prelude.Nothing,
       mailFromDomain = Prelude.Nothing}
instance ToResourceProperties MailFromAttributesProperty where
  toResourceProperties MailFromAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.MailFromAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BehaviorOnMxFailure" Prelude.<$> behaviorOnMxFailure,
                            (JSON..=) "MailFromDomain" Prelude.<$> mailFromDomain])}
instance JSON.ToJSON MailFromAttributesProperty where
  toJSON MailFromAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BehaviorOnMxFailure" Prelude.<$> behaviorOnMxFailure,
               (JSON..=) "MailFromDomain" Prelude.<$> mailFromDomain]))
instance Property "BehaviorOnMxFailure" MailFromAttributesProperty where
  type PropertyType "BehaviorOnMxFailure" MailFromAttributesProperty = Value Prelude.Text
  set newValue MailFromAttributesProperty {..}
    = MailFromAttributesProperty
        {behaviorOnMxFailure = Prelude.pure newValue, ..}
instance Property "MailFromDomain" MailFromAttributesProperty where
  type PropertyType "MailFromDomain" MailFromAttributesProperty = Value Prelude.Text
  set newValue MailFromAttributesProperty {..}
    = MailFromAttributesProperty
        {mailFromDomain = Prelude.pure newValue, ..}