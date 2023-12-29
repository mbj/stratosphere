module Stratosphere.S3.Bucket.ReplicationRuleFilterProperty (
        module Exports, ReplicationRuleFilterProperty(..),
        mkReplicationRuleFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationRuleAndOperatorProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationRuleFilterProperty
  = ReplicationRuleFilterProperty {and :: (Prelude.Maybe ReplicationRuleAndOperatorProperty),
                                   prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                   tagFilter :: (Prelude.Maybe TagFilterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationRuleFilterProperty :: ReplicationRuleFilterProperty
mkReplicationRuleFilterProperty
  = ReplicationRuleFilterProperty
      {and = Prelude.Nothing, prefix = Prelude.Nothing,
       tagFilter = Prelude.Nothing}
instance ToResourceProperties ReplicationRuleFilterProperty where
  toResourceProperties ReplicationRuleFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationRuleFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "And" Prelude.<$> and,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "TagFilter" Prelude.<$> tagFilter])}
instance JSON.ToJSON ReplicationRuleFilterProperty where
  toJSON ReplicationRuleFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "And" Prelude.<$> and,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "TagFilter" Prelude.<$> tagFilter]))
instance Property "And" ReplicationRuleFilterProperty where
  type PropertyType "And" ReplicationRuleFilterProperty = ReplicationRuleAndOperatorProperty
  set newValue ReplicationRuleFilterProperty {..}
    = ReplicationRuleFilterProperty {and = Prelude.pure newValue, ..}
instance Property "Prefix" ReplicationRuleFilterProperty where
  type PropertyType "Prefix" ReplicationRuleFilterProperty = Value Prelude.Text
  set newValue ReplicationRuleFilterProperty {..}
    = ReplicationRuleFilterProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "TagFilter" ReplicationRuleFilterProperty where
  type PropertyType "TagFilter" ReplicationRuleFilterProperty = TagFilterProperty
  set newValue ReplicationRuleFilterProperty {..}
    = ReplicationRuleFilterProperty
        {tagFilter = Prelude.pure newValue, ..}