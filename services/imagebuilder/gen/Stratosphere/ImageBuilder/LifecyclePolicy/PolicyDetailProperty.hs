module Stratosphere.ImageBuilder.LifecyclePolicy.PolicyDetailProperty (
        module Exports, PolicyDetailProperty(..), mkPolicyDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.ExclusionRulesProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.FilterProperty as Exports
import Stratosphere.ResourceProperties
data PolicyDetailProperty
  = PolicyDetailProperty {action :: ActionProperty,
                          exclusionRules :: (Prelude.Maybe ExclusionRulesProperty),
                          filter :: FilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDetailProperty ::
  ActionProperty -> FilterProperty -> PolicyDetailProperty
mkPolicyDetailProperty action filter
  = PolicyDetailProperty
      {action = action, filter = filter,
       exclusionRules = Prelude.Nothing}
instance ToResourceProperties PolicyDetailProperty where
  toResourceProperties PolicyDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.PolicyDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Filter" JSON..= filter]
                           (Prelude.catMaybes
                              [(JSON..=) "ExclusionRules" Prelude.<$> exclusionRules]))}
instance JSON.ToJSON PolicyDetailProperty where
  toJSON PolicyDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Filter" JSON..= filter]
              (Prelude.catMaybes
                 [(JSON..=) "ExclusionRules" Prelude.<$> exclusionRules])))
instance Property "Action" PolicyDetailProperty where
  type PropertyType "Action" PolicyDetailProperty = ActionProperty
  set newValue PolicyDetailProperty {..}
    = PolicyDetailProperty {action = newValue, ..}
instance Property "ExclusionRules" PolicyDetailProperty where
  type PropertyType "ExclusionRules" PolicyDetailProperty = ExclusionRulesProperty
  set newValue PolicyDetailProperty {..}
    = PolicyDetailProperty {exclusionRules = Prelude.pure newValue, ..}
instance Property "Filter" PolicyDetailProperty where
  type PropertyType "Filter" PolicyDetailProperty = FilterProperty
  set newValue PolicyDetailProperty {..}
    = PolicyDetailProperty {filter = newValue, ..}