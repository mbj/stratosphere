module Stratosphere.ImageBuilder.LifecyclePolicy.ExclusionRulesProperty (
        module Exports, ExclusionRulesProperty(..),
        mkExclusionRulesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.AmiExclusionRulesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExclusionRulesProperty
  = ExclusionRulesProperty {amis :: (Prelude.Maybe AmiExclusionRulesProperty),
                            tagMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExclusionRulesProperty :: ExclusionRulesProperty
mkExclusionRulesProperty
  = ExclusionRulesProperty
      {amis = Prelude.Nothing, tagMap = Prelude.Nothing}
instance ToResourceProperties ExclusionRulesProperty where
  toResourceProperties ExclusionRulesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.ExclusionRules",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Amis" Prelude.<$> amis,
                            (JSON..=) "TagMap" Prelude.<$> tagMap])}
instance JSON.ToJSON ExclusionRulesProperty where
  toJSON ExclusionRulesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Amis" Prelude.<$> amis,
               (JSON..=) "TagMap" Prelude.<$> tagMap]))
instance Property "Amis" ExclusionRulesProperty where
  type PropertyType "Amis" ExclusionRulesProperty = AmiExclusionRulesProperty
  set newValue ExclusionRulesProperty {..}
    = ExclusionRulesProperty {amis = Prelude.pure newValue, ..}
instance Property "TagMap" ExclusionRulesProperty where
  type PropertyType "TagMap" ExclusionRulesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExclusionRulesProperty {..}
    = ExclusionRulesProperty {tagMap = Prelude.pure newValue, ..}