module Stratosphere.SES.MailManagerTrafficPolicy (
        module Exports, MailManagerTrafficPolicy(..),
        mkMailManagerTrafficPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.PolicyStatementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerTrafficPolicy
  = MailManagerTrafficPolicy {defaultAction :: (Value Prelude.Text),
                              maxMessageSizeBytes :: (Prelude.Maybe (Value Prelude.Double)),
                              policyStatements :: [PolicyStatementProperty],
                              tags :: (Prelude.Maybe [Tag]),
                              trafficPolicyName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerTrafficPolicy ::
  Value Prelude.Text
  -> [PolicyStatementProperty] -> MailManagerTrafficPolicy
mkMailManagerTrafficPolicy defaultAction policyStatements
  = MailManagerTrafficPolicy
      {defaultAction = defaultAction,
       policyStatements = policyStatements,
       maxMessageSizeBytes = Prelude.Nothing, tags = Prelude.Nothing,
       trafficPolicyName = Prelude.Nothing}
instance ToResourceProperties MailManagerTrafficPolicy where
  toResourceProperties MailManagerTrafficPolicy {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultAction" JSON..= defaultAction,
                            "PolicyStatements" JSON..= policyStatements]
                           (Prelude.catMaybes
                              [(JSON..=) "MaxMessageSizeBytes" Prelude.<$> maxMessageSizeBytes,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrafficPolicyName" Prelude.<$> trafficPolicyName]))}
instance JSON.ToJSON MailManagerTrafficPolicy where
  toJSON MailManagerTrafficPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultAction" JSON..= defaultAction,
               "PolicyStatements" JSON..= policyStatements]
              (Prelude.catMaybes
                 [(JSON..=) "MaxMessageSizeBytes" Prelude.<$> maxMessageSizeBytes,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrafficPolicyName" Prelude.<$> trafficPolicyName])))
instance Property "DefaultAction" MailManagerTrafficPolicy where
  type PropertyType "DefaultAction" MailManagerTrafficPolicy = Value Prelude.Text
  set newValue MailManagerTrafficPolicy {..}
    = MailManagerTrafficPolicy {defaultAction = newValue, ..}
instance Property "MaxMessageSizeBytes" MailManagerTrafficPolicy where
  type PropertyType "MaxMessageSizeBytes" MailManagerTrafficPolicy = Value Prelude.Double
  set newValue MailManagerTrafficPolicy {..}
    = MailManagerTrafficPolicy
        {maxMessageSizeBytes = Prelude.pure newValue, ..}
instance Property "PolicyStatements" MailManagerTrafficPolicy where
  type PropertyType "PolicyStatements" MailManagerTrafficPolicy = [PolicyStatementProperty]
  set newValue MailManagerTrafficPolicy {..}
    = MailManagerTrafficPolicy {policyStatements = newValue, ..}
instance Property "Tags" MailManagerTrafficPolicy where
  type PropertyType "Tags" MailManagerTrafficPolicy = [Tag]
  set newValue MailManagerTrafficPolicy {..}
    = MailManagerTrafficPolicy {tags = Prelude.pure newValue, ..}
instance Property "TrafficPolicyName" MailManagerTrafficPolicy where
  type PropertyType "TrafficPolicyName" MailManagerTrafficPolicy = Value Prelude.Text
  set newValue MailManagerTrafficPolicy {..}
    = MailManagerTrafficPolicy
        {trafficPolicyName = Prelude.pure newValue, ..}