module Stratosphere.S3.Bucket.LifecycleConfigurationProperty (
        module Exports, LifecycleConfigurationProperty(..),
        mkLifecycleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecycleConfigurationProperty
  = LifecycleConfigurationProperty {rules :: [RuleProperty],
                                    transitionDefaultMinimumObjectSize :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecycleConfigurationProperty ::
  [RuleProperty] -> LifecycleConfigurationProperty
mkLifecycleConfigurationProperty rules
  = LifecycleConfigurationProperty
      {rules = rules,
       transitionDefaultMinimumObjectSize = Prelude.Nothing}
instance ToResourceProperties LifecycleConfigurationProperty where
  toResourceProperties LifecycleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.LifecycleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Rules" JSON..= rules]
                           (Prelude.catMaybes
                              [(JSON..=) "TransitionDefaultMinimumObjectSize"
                                 Prelude.<$> transitionDefaultMinimumObjectSize]))}
instance JSON.ToJSON LifecycleConfigurationProperty where
  toJSON LifecycleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Rules" JSON..= rules]
              (Prelude.catMaybes
                 [(JSON..=) "TransitionDefaultMinimumObjectSize"
                    Prelude.<$> transitionDefaultMinimumObjectSize])))
instance Property "Rules" LifecycleConfigurationProperty where
  type PropertyType "Rules" LifecycleConfigurationProperty = [RuleProperty]
  set newValue LifecycleConfigurationProperty {..}
    = LifecycleConfigurationProperty {rules = newValue, ..}
instance Property "TransitionDefaultMinimumObjectSize" LifecycleConfigurationProperty where
  type PropertyType "TransitionDefaultMinimumObjectSize" LifecycleConfigurationProperty = Value Prelude.Text
  set newValue LifecycleConfigurationProperty {..}
    = LifecycleConfigurationProperty
        {transitionDefaultMinimumObjectSize = Prelude.pure newValue, ..}