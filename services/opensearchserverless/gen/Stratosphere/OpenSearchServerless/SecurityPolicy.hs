module Stratosphere.OpenSearchServerless.SecurityPolicy (
        SecurityPolicy(..), mkSecurityPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityPolicy
  = SecurityPolicy {description :: (Prelude.Maybe (Value Prelude.Text)),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    policy :: (Value Prelude.Text),
                    type' :: (Prelude.Maybe (Value Prelude.Text))}
mkSecurityPolicy :: Value Prelude.Text -> SecurityPolicy
mkSecurityPolicy policy
  = SecurityPolicy
      {policy = policy, description = Prelude.Nothing,
       name = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties SecurityPolicy where
  toResourceProperties SecurityPolicy {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::SecurityPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Policy" JSON..= policy]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON SecurityPolicy where
  toJSON SecurityPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Policy" JSON..= policy]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Description" SecurityPolicy where
  type PropertyType "Description" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {description = Prelude.pure newValue, ..}
instance Property "Name" SecurityPolicy where
  type PropertyType "Name" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {name = Prelude.pure newValue, ..}
instance Property "Policy" SecurityPolicy where
  type PropertyType "Policy" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {policy = newValue, ..}
instance Property "Type" SecurityPolicy where
  type PropertyType "Type" SecurityPolicy = Value Prelude.Text
  set newValue SecurityPolicy {..}
    = SecurityPolicy {type' = Prelude.pure newValue, ..}