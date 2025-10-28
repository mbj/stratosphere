module Stratosphere.SES.EmailIdentity.FeedbackAttributesProperty (
        FeedbackAttributesProperty(..), mkFeedbackAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeedbackAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-feedbackattributes.html>
    FeedbackAttributesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-feedbackattributes.html#cfn-ses-emailidentity-feedbackattributes-emailforwardingenabled>
                                emailForwardingEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFeedbackAttributesProperty :: FeedbackAttributesProperty
mkFeedbackAttributesProperty
  = FeedbackAttributesProperty
      {haddock_workaround_ = (),
       emailForwardingEnabled = Prelude.Nothing}
instance ToResourceProperties FeedbackAttributesProperty where
  toResourceProperties FeedbackAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.FeedbackAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmailForwardingEnabled"
                              Prelude.<$> emailForwardingEnabled])}
instance JSON.ToJSON FeedbackAttributesProperty where
  toJSON FeedbackAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmailForwardingEnabled"
                 Prelude.<$> emailForwardingEnabled]))
instance Property "EmailForwardingEnabled" FeedbackAttributesProperty where
  type PropertyType "EmailForwardingEnabled" FeedbackAttributesProperty = Value Prelude.Bool
  set newValue FeedbackAttributesProperty {..}
    = FeedbackAttributesProperty
        {emailForwardingEnabled = Prelude.pure newValue, ..}