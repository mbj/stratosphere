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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfiguration.html>
    LifecycleConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfiguration.html#cfn-s3-bucket-lifecycleconfiguration-rules>
                                    rules :: [RuleProperty],
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfiguration.html#cfn-s3-bucket-lifecycleconfiguration-transitiondefaultminimumobjectsize>
                                    transitionDefaultMinimumObjectSize :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecycleConfigurationProperty ::
  [RuleProperty] -> LifecycleConfigurationProperty
mkLifecycleConfigurationProperty rules
  = LifecycleConfigurationProperty
      {haddock_workaround_ = (), rules = rules,
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