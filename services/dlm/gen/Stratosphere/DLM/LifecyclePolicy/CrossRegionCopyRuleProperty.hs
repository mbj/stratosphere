module Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyRuleProperty (
        module Exports, CrossRegionCopyRuleProperty(..),
        mkCrossRegionCopyRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyDeprecateRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyRetainRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrossRegionCopyRuleProperty
  = CrossRegionCopyRuleProperty {cmkArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 copyTags :: (Prelude.Maybe (Value Prelude.Bool)),
                                 deprecateRule :: (Prelude.Maybe CrossRegionCopyDeprecateRuleProperty),
                                 encrypted :: (Value Prelude.Bool),
                                 retainRule :: (Prelude.Maybe CrossRegionCopyRetainRuleProperty),
                                 target :: (Prelude.Maybe (Value Prelude.Text)),
                                 targetRegion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossRegionCopyRuleProperty ::
  Value Prelude.Bool -> CrossRegionCopyRuleProperty
mkCrossRegionCopyRuleProperty encrypted
  = CrossRegionCopyRuleProperty
      {encrypted = encrypted, cmkArn = Prelude.Nothing,
       copyTags = Prelude.Nothing, deprecateRule = Prelude.Nothing,
       retainRule = Prelude.Nothing, target = Prelude.Nothing,
       targetRegion = Prelude.Nothing}
instance ToResourceProperties CrossRegionCopyRuleProperty where
  toResourceProperties CrossRegionCopyRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.CrossRegionCopyRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Encrypted" JSON..= encrypted]
                           (Prelude.catMaybes
                              [(JSON..=) "CmkArn" Prelude.<$> cmkArn,
                               (JSON..=) "CopyTags" Prelude.<$> copyTags,
                               (JSON..=) "DeprecateRule" Prelude.<$> deprecateRule,
                               (JSON..=) "RetainRule" Prelude.<$> retainRule,
                               (JSON..=) "Target" Prelude.<$> target,
                               (JSON..=) "TargetRegion" Prelude.<$> targetRegion]))}
instance JSON.ToJSON CrossRegionCopyRuleProperty where
  toJSON CrossRegionCopyRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Encrypted" JSON..= encrypted]
              (Prelude.catMaybes
                 [(JSON..=) "CmkArn" Prelude.<$> cmkArn,
                  (JSON..=) "CopyTags" Prelude.<$> copyTags,
                  (JSON..=) "DeprecateRule" Prelude.<$> deprecateRule,
                  (JSON..=) "RetainRule" Prelude.<$> retainRule,
                  (JSON..=) "Target" Prelude.<$> target,
                  (JSON..=) "TargetRegion" Prelude.<$> targetRegion])))
instance Property "CmkArn" CrossRegionCopyRuleProperty where
  type PropertyType "CmkArn" CrossRegionCopyRuleProperty = Value Prelude.Text
  set newValue CrossRegionCopyRuleProperty {..}
    = CrossRegionCopyRuleProperty {cmkArn = Prelude.pure newValue, ..}
instance Property "CopyTags" CrossRegionCopyRuleProperty where
  type PropertyType "CopyTags" CrossRegionCopyRuleProperty = Value Prelude.Bool
  set newValue CrossRegionCopyRuleProperty {..}
    = CrossRegionCopyRuleProperty
        {copyTags = Prelude.pure newValue, ..}
instance Property "DeprecateRule" CrossRegionCopyRuleProperty where
  type PropertyType "DeprecateRule" CrossRegionCopyRuleProperty = CrossRegionCopyDeprecateRuleProperty
  set newValue CrossRegionCopyRuleProperty {..}
    = CrossRegionCopyRuleProperty
        {deprecateRule = Prelude.pure newValue, ..}
instance Property "Encrypted" CrossRegionCopyRuleProperty where
  type PropertyType "Encrypted" CrossRegionCopyRuleProperty = Value Prelude.Bool
  set newValue CrossRegionCopyRuleProperty {..}
    = CrossRegionCopyRuleProperty {encrypted = newValue, ..}
instance Property "RetainRule" CrossRegionCopyRuleProperty where
  type PropertyType "RetainRule" CrossRegionCopyRuleProperty = CrossRegionCopyRetainRuleProperty
  set newValue CrossRegionCopyRuleProperty {..}
    = CrossRegionCopyRuleProperty
        {retainRule = Prelude.pure newValue, ..}
instance Property "Target" CrossRegionCopyRuleProperty where
  type PropertyType "Target" CrossRegionCopyRuleProperty = Value Prelude.Text
  set newValue CrossRegionCopyRuleProperty {..}
    = CrossRegionCopyRuleProperty {target = Prelude.pure newValue, ..}
instance Property "TargetRegion" CrossRegionCopyRuleProperty where
  type PropertyType "TargetRegion" CrossRegionCopyRuleProperty = Value Prelude.Text
  set newValue CrossRegionCopyRuleProperty {..}
    = CrossRegionCopyRuleProperty
        {targetRegion = Prelude.pure newValue, ..}