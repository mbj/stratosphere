module Stratosphere.S3Outposts.Bucket.LifecycleConfigurationProperty (
        module Exports, LifecycleConfigurationProperty(..),
        mkLifecycleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.RuleProperty as Exports
import Stratosphere.ResourceProperties
data LifecycleConfigurationProperty
  = LifecycleConfigurationProperty {rules :: [RuleProperty]}
mkLifecycleConfigurationProperty ::
  [RuleProperty] -> LifecycleConfigurationProperty
mkLifecycleConfigurationProperty rules
  = LifecycleConfigurationProperty {rules = rules}
instance ToResourceProperties LifecycleConfigurationProperty where
  toResourceProperties LifecycleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Bucket.LifecycleConfiguration",
         properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON LifecycleConfigurationProperty where
  toJSON LifecycleConfigurationProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" LifecycleConfigurationProperty where
  type PropertyType "Rules" LifecycleConfigurationProperty = [RuleProperty]
  set newValue LifecycleConfigurationProperty {}
    = LifecycleConfigurationProperty {rules = newValue, ..}