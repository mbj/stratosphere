module Stratosphere.FMS.Policy.NetworkAclEntrySetProperty (
        module Exports, NetworkAclEntrySetProperty(..),
        mkNetworkAclEntrySetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FMS.Policy.NetworkAclEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkAclEntrySetProperty
  = NetworkAclEntrySetProperty {firstEntries :: (Prelude.Maybe [NetworkAclEntryProperty]),
                                forceRemediateForFirstEntries :: (Value Prelude.Bool),
                                forceRemediateForLastEntries :: (Value Prelude.Bool),
                                lastEntries :: (Prelude.Maybe [NetworkAclEntryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkAclEntrySetProperty ::
  Value Prelude.Bool
  -> Value Prelude.Bool -> NetworkAclEntrySetProperty
mkNetworkAclEntrySetProperty
  forceRemediateForFirstEntries
  forceRemediateForLastEntries
  = NetworkAclEntrySetProperty
      {forceRemediateForFirstEntries = forceRemediateForFirstEntries,
       forceRemediateForLastEntries = forceRemediateForLastEntries,
       firstEntries = Prelude.Nothing, lastEntries = Prelude.Nothing}
instance ToResourceProperties NetworkAclEntrySetProperty where
  toResourceProperties NetworkAclEntrySetProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.NetworkAclEntrySet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ForceRemediateForFirstEntries"
                              JSON..= forceRemediateForFirstEntries,
                            "ForceRemediateForLastEntries"
                              JSON..= forceRemediateForLastEntries]
                           (Prelude.catMaybes
                              [(JSON..=) "FirstEntries" Prelude.<$> firstEntries,
                               (JSON..=) "LastEntries" Prelude.<$> lastEntries]))}
instance JSON.ToJSON NetworkAclEntrySetProperty where
  toJSON NetworkAclEntrySetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ForceRemediateForFirstEntries"
                 JSON..= forceRemediateForFirstEntries,
               "ForceRemediateForLastEntries"
                 JSON..= forceRemediateForLastEntries]
              (Prelude.catMaybes
                 [(JSON..=) "FirstEntries" Prelude.<$> firstEntries,
                  (JSON..=) "LastEntries" Prelude.<$> lastEntries])))
instance Property "FirstEntries" NetworkAclEntrySetProperty where
  type PropertyType "FirstEntries" NetworkAclEntrySetProperty = [NetworkAclEntryProperty]
  set newValue NetworkAclEntrySetProperty {..}
    = NetworkAclEntrySetProperty
        {firstEntries = Prelude.pure newValue, ..}
instance Property "ForceRemediateForFirstEntries" NetworkAclEntrySetProperty where
  type PropertyType "ForceRemediateForFirstEntries" NetworkAclEntrySetProperty = Value Prelude.Bool
  set newValue NetworkAclEntrySetProperty {..}
    = NetworkAclEntrySetProperty
        {forceRemediateForFirstEntries = newValue, ..}
instance Property "ForceRemediateForLastEntries" NetworkAclEntrySetProperty where
  type PropertyType "ForceRemediateForLastEntries" NetworkAclEntrySetProperty = Value Prelude.Bool
  set newValue NetworkAclEntrySetProperty {..}
    = NetworkAclEntrySetProperty
        {forceRemediateForLastEntries = newValue, ..}
instance Property "LastEntries" NetworkAclEntrySetProperty where
  type PropertyType "LastEntries" NetworkAclEntrySetProperty = [NetworkAclEntryProperty]
  set newValue NetworkAclEntrySetProperty {..}
    = NetworkAclEntrySetProperty
        {lastEntries = Prelude.pure newValue, ..}