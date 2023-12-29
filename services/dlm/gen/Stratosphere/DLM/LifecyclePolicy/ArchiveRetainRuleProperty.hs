module Stratosphere.DLM.LifecyclePolicy.ArchiveRetainRuleProperty (
        module Exports, ArchiveRetainRuleProperty(..),
        mkArchiveRetainRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.RetentionArchiveTierProperty as Exports
import Stratosphere.ResourceProperties
data ArchiveRetainRuleProperty
  = ArchiveRetainRuleProperty {retentionArchiveTier :: RetentionArchiveTierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchiveRetainRuleProperty ::
  RetentionArchiveTierProperty -> ArchiveRetainRuleProperty
mkArchiveRetainRuleProperty retentionArchiveTier
  = ArchiveRetainRuleProperty
      {retentionArchiveTier = retentionArchiveTier}
instance ToResourceProperties ArchiveRetainRuleProperty where
  toResourceProperties ArchiveRetainRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.ArchiveRetainRule",
         supportsTags = Prelude.False,
         properties = ["RetentionArchiveTier" JSON..= retentionArchiveTier]}
instance JSON.ToJSON ArchiveRetainRuleProperty where
  toJSON ArchiveRetainRuleProperty {..}
    = JSON.object ["RetentionArchiveTier" JSON..= retentionArchiveTier]
instance Property "RetentionArchiveTier" ArchiveRetainRuleProperty where
  type PropertyType "RetentionArchiveTier" ArchiveRetainRuleProperty = RetentionArchiveTierProperty
  set newValue ArchiveRetainRuleProperty {}
    = ArchiveRetainRuleProperty {retentionArchiveTier = newValue, ..}