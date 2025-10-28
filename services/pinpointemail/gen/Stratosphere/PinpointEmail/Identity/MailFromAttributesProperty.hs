module Stratosphere.PinpointEmail.Identity.MailFromAttributesProperty (
        MailFromAttributesProperty(..), mkMailFromAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MailFromAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html>
    MailFromAttributesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-behavioronmxfailure>
                                behaviorOnMxFailure :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-mailfromattributes.html#cfn-pinpointemail-identity-mailfromattributes-mailfromdomain>
                                mailFromDomain :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailFromAttributesProperty :: MailFromAttributesProperty
mkMailFromAttributesProperty
  = MailFromAttributesProperty
      {haddock_workaround_ = (), behaviorOnMxFailure = Prelude.Nothing,
       mailFromDomain = Prelude.Nothing}
instance ToResourceProperties MailFromAttributesProperty where
  toResourceProperties MailFromAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::Identity.MailFromAttributes",
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