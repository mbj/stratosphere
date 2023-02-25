module Stratosphere.OpenSearchServerless.AccessPolicy (
        AccessPolicy(..), mkAccessPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPolicy
  = AccessPolicy {description :: (Prelude.Maybe (Value Prelude.Text)),
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  policy :: (Prelude.Maybe (Value Prelude.Text)),
                  type' :: (Prelude.Maybe (Value Prelude.Text))}
mkAccessPolicy :: AccessPolicy
mkAccessPolicy
  = AccessPolicy
      {description = Prelude.Nothing, name = Prelude.Nothing,
       policy = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties AccessPolicy where
  toResourceProperties AccessPolicy {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::AccessPolicy",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Policy" Prelude.<$> policy,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON AccessPolicy where
  toJSON AccessPolicy {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Policy" Prelude.<$> policy,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Description" AccessPolicy where
  type PropertyType "Description" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {description = Prelude.pure newValue, ..}
instance Property "Name" AccessPolicy where
  type PropertyType "Name" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {name = Prelude.pure newValue, ..}
instance Property "Policy" AccessPolicy where
  type PropertyType "Policy" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {policy = Prelude.pure newValue, ..}
instance Property "Type" AccessPolicy where
  type PropertyType "Type" AccessPolicy = Value Prelude.Text
  set newValue AccessPolicy {..}
    = AccessPolicy {type' = Prelude.pure newValue, ..}