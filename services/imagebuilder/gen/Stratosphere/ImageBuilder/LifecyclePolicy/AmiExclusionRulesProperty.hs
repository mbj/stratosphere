module Stratosphere.ImageBuilder.LifecyclePolicy.AmiExclusionRulesProperty (
        module Exports, AmiExclusionRulesProperty(..),
        mkAmiExclusionRulesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.LastLaunchedProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmiExclusionRulesProperty
  = AmiExclusionRulesProperty {isPublic :: (Prelude.Maybe (Value Prelude.Bool)),
                               lastLaunched :: (Prelude.Maybe LastLaunchedProperty),
                               regions :: (Prelude.Maybe (ValueList Prelude.Text)),
                               sharedAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                               tagMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmiExclusionRulesProperty :: AmiExclusionRulesProperty
mkAmiExclusionRulesProperty
  = AmiExclusionRulesProperty
      {isPublic = Prelude.Nothing, lastLaunched = Prelude.Nothing,
       regions = Prelude.Nothing, sharedAccounts = Prelude.Nothing,
       tagMap = Prelude.Nothing}
instance ToResourceProperties AmiExclusionRulesProperty where
  toResourceProperties AmiExclusionRulesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.AmiExclusionRules",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsPublic" Prelude.<$> isPublic,
                            (JSON..=) "LastLaunched" Prelude.<$> lastLaunched,
                            (JSON..=) "Regions" Prelude.<$> regions,
                            (JSON..=) "SharedAccounts" Prelude.<$> sharedAccounts,
                            (JSON..=) "TagMap" Prelude.<$> tagMap])}
instance JSON.ToJSON AmiExclusionRulesProperty where
  toJSON AmiExclusionRulesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsPublic" Prelude.<$> isPublic,
               (JSON..=) "LastLaunched" Prelude.<$> lastLaunched,
               (JSON..=) "Regions" Prelude.<$> regions,
               (JSON..=) "SharedAccounts" Prelude.<$> sharedAccounts,
               (JSON..=) "TagMap" Prelude.<$> tagMap]))
instance Property "IsPublic" AmiExclusionRulesProperty where
  type PropertyType "IsPublic" AmiExclusionRulesProperty = Value Prelude.Bool
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty {isPublic = Prelude.pure newValue, ..}
instance Property "LastLaunched" AmiExclusionRulesProperty where
  type PropertyType "LastLaunched" AmiExclusionRulesProperty = LastLaunchedProperty
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty
        {lastLaunched = Prelude.pure newValue, ..}
instance Property "Regions" AmiExclusionRulesProperty where
  type PropertyType "Regions" AmiExclusionRulesProperty = ValueList Prelude.Text
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty {regions = Prelude.pure newValue, ..}
instance Property "SharedAccounts" AmiExclusionRulesProperty where
  type PropertyType "SharedAccounts" AmiExclusionRulesProperty = ValueList Prelude.Text
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty
        {sharedAccounts = Prelude.pure newValue, ..}
instance Property "TagMap" AmiExclusionRulesProperty where
  type PropertyType "TagMap" AmiExclusionRulesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty {tagMap = Prelude.pure newValue, ..}