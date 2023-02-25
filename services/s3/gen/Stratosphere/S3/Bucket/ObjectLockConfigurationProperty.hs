module Stratosphere.S3.Bucket.ObjectLockConfigurationProperty (
        module Exports, ObjectLockConfigurationProperty(..),
        mkObjectLockConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ObjectLockRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectLockConfigurationProperty
  = ObjectLockConfigurationProperty {objectLockEnabled :: (Prelude.Maybe (Value Prelude.Text)),
                                     rule :: (Prelude.Maybe ObjectLockRuleProperty)}
mkObjectLockConfigurationProperty ::
  ObjectLockConfigurationProperty
mkObjectLockConfigurationProperty
  = ObjectLockConfigurationProperty
      {objectLockEnabled = Prelude.Nothing, rule = Prelude.Nothing}
instance ToResourceProperties ObjectLockConfigurationProperty where
  toResourceProperties ObjectLockConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ObjectLockConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ObjectLockEnabled" Prelude.<$> objectLockEnabled,
                            (JSON..=) "Rule" Prelude.<$> rule])}
instance JSON.ToJSON ObjectLockConfigurationProperty where
  toJSON ObjectLockConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ObjectLockEnabled" Prelude.<$> objectLockEnabled,
               (JSON..=) "Rule" Prelude.<$> rule]))
instance Property "ObjectLockEnabled" ObjectLockConfigurationProperty where
  type PropertyType "ObjectLockEnabled" ObjectLockConfigurationProperty = Value Prelude.Text
  set newValue ObjectLockConfigurationProperty {..}
    = ObjectLockConfigurationProperty
        {objectLockEnabled = Prelude.pure newValue, ..}
instance Property "Rule" ObjectLockConfigurationProperty where
  type PropertyType "Rule" ObjectLockConfigurationProperty = ObjectLockRuleProperty
  set newValue ObjectLockConfigurationProperty {..}
    = ObjectLockConfigurationProperty
        {rule = Prelude.pure newValue, ..}