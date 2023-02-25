module Stratosphere.SES.EmailIdentity.FeedbackAttributesProperty (
        FeedbackAttributesProperty(..), mkFeedbackAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeedbackAttributesProperty
  = FeedbackAttributesProperty {emailForwardingEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkFeedbackAttributesProperty :: FeedbackAttributesProperty
mkFeedbackAttributesProperty
  = FeedbackAttributesProperty
      {emailForwardingEnabled = Prelude.Nothing}
instance ToResourceProperties FeedbackAttributesProperty where
  toResourceProperties FeedbackAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.FeedbackAttributes",
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
  set newValue FeedbackAttributesProperty {}
    = FeedbackAttributesProperty
        {emailForwardingEnabled = Prelude.pure newValue, ..}