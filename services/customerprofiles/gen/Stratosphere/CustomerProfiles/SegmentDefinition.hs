module Stratosphere.CustomerProfiles.SegmentDefinition (
        module Exports, SegmentDefinition(..), mkSegmentDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.SegmentGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SegmentDefinition
  = SegmentDefinition {description :: (Prelude.Maybe (Value Prelude.Text)),
                       displayName :: (Value Prelude.Text),
                       domainName :: (Value Prelude.Text),
                       segmentDefinitionName :: (Value Prelude.Text),
                       segmentGroups :: SegmentGroupProperty,
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegmentDefinition ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SegmentGroupProperty -> SegmentDefinition
mkSegmentDefinition
  displayName
  domainName
  segmentDefinitionName
  segmentGroups
  = SegmentDefinition
      {displayName = displayName, domainName = domainName,
       segmentDefinitionName = segmentDefinitionName,
       segmentGroups = segmentGroups, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SegmentDefinition where
  toResourceProperties SegmentDefinition {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName,
                            "DomainName" JSON..= domainName,
                            "SegmentDefinitionName" JSON..= segmentDefinitionName,
                            "SegmentGroups" JSON..= segmentGroups]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SegmentDefinition where
  toJSON SegmentDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName,
               "DomainName" JSON..= domainName,
               "SegmentDefinitionName" JSON..= segmentDefinitionName,
               "SegmentGroups" JSON..= segmentGroups]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" SegmentDefinition where
  type PropertyType "Description" SegmentDefinition = Value Prelude.Text
  set newValue SegmentDefinition {..}
    = SegmentDefinition {description = Prelude.pure newValue, ..}
instance Property "DisplayName" SegmentDefinition where
  type PropertyType "DisplayName" SegmentDefinition = Value Prelude.Text
  set newValue SegmentDefinition {..}
    = SegmentDefinition {displayName = newValue, ..}
instance Property "DomainName" SegmentDefinition where
  type PropertyType "DomainName" SegmentDefinition = Value Prelude.Text
  set newValue SegmentDefinition {..}
    = SegmentDefinition {domainName = newValue, ..}
instance Property "SegmentDefinitionName" SegmentDefinition where
  type PropertyType "SegmentDefinitionName" SegmentDefinition = Value Prelude.Text
  set newValue SegmentDefinition {..}
    = SegmentDefinition {segmentDefinitionName = newValue, ..}
instance Property "SegmentGroups" SegmentDefinition where
  type PropertyType "SegmentGroups" SegmentDefinition = SegmentGroupProperty
  set newValue SegmentDefinition {..}
    = SegmentDefinition {segmentGroups = newValue, ..}
instance Property "Tags" SegmentDefinition where
  type PropertyType "Tags" SegmentDefinition = [Tag]
  set newValue SegmentDefinition {..}
    = SegmentDefinition {tags = Prelude.pure newValue, ..}