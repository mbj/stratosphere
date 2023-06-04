module Stratosphere.Shield.ProtectionGroup (
        ProtectionGroup(..), mkProtectionGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProtectionGroup
  = ProtectionGroup {aggregation :: (Value Prelude.Text),
                     members :: (Prelude.Maybe (ValueList Prelude.Text)),
                     pattern :: (Value Prelude.Text),
                     protectionGroupId :: (Value Prelude.Text),
                     resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag])}
mkProtectionGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ProtectionGroup
mkProtectionGroup aggregation pattern protectionGroupId
  = ProtectionGroup
      {aggregation = aggregation, pattern = pattern,
       protectionGroupId = protectionGroupId, members = Prelude.Nothing,
       resourceType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ProtectionGroup where
  toResourceProperties ProtectionGroup {..}
    = ResourceProperties
        {awsType = "AWS::Shield::ProtectionGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Aggregation" JSON..= aggregation, "Pattern" JSON..= pattern,
                            "ProtectionGroupId" JSON..= protectionGroupId]
                           (Prelude.catMaybes
                              [(JSON..=) "Members" Prelude.<$> members,
                               (JSON..=) "ResourceType" Prelude.<$> resourceType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ProtectionGroup where
  toJSON ProtectionGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Aggregation" JSON..= aggregation, "Pattern" JSON..= pattern,
               "ProtectionGroupId" JSON..= protectionGroupId]
              (Prelude.catMaybes
                 [(JSON..=) "Members" Prelude.<$> members,
                  (JSON..=) "ResourceType" Prelude.<$> resourceType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Aggregation" ProtectionGroup where
  type PropertyType "Aggregation" ProtectionGroup = Value Prelude.Text
  set newValue ProtectionGroup {..}
    = ProtectionGroup {aggregation = newValue, ..}
instance Property "Members" ProtectionGroup where
  type PropertyType "Members" ProtectionGroup = ValueList Prelude.Text
  set newValue ProtectionGroup {..}
    = ProtectionGroup {members = Prelude.pure newValue, ..}
instance Property "Pattern" ProtectionGroup where
  type PropertyType "Pattern" ProtectionGroup = Value Prelude.Text
  set newValue ProtectionGroup {..}
    = ProtectionGroup {pattern = newValue, ..}
instance Property "ProtectionGroupId" ProtectionGroup where
  type PropertyType "ProtectionGroupId" ProtectionGroup = Value Prelude.Text
  set newValue ProtectionGroup {..}
    = ProtectionGroup {protectionGroupId = newValue, ..}
instance Property "ResourceType" ProtectionGroup where
  type PropertyType "ResourceType" ProtectionGroup = Value Prelude.Text
  set newValue ProtectionGroup {..}
    = ProtectionGroup {resourceType = Prelude.pure newValue, ..}
instance Property "Tags" ProtectionGroup where
  type PropertyType "Tags" ProtectionGroup = [Tag]
  set newValue ProtectionGroup {..}
    = ProtectionGroup {tags = Prelude.pure newValue, ..}