module Stratosphere.S3Outposts.Bucket.LifecycleConfigurationProperty (
        module Exports, LifecycleConfigurationProperty(..),
        mkLifecycleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.Bucket.RuleProperty as Exports
import Stratosphere.ResourceProperties
data LifecycleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-lifecycleconfiguration.html>
    LifecycleConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3outposts-bucket-lifecycleconfiguration.html#cfn-s3outposts-bucket-lifecycleconfiguration-rules>
                                    rules :: [RuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecycleConfigurationProperty ::
  [RuleProperty] -> LifecycleConfigurationProperty
mkLifecycleConfigurationProperty rules
  = LifecycleConfigurationProperty
      {haddock_workaround_ = (), rules = rules}
instance ToResourceProperties LifecycleConfigurationProperty where
  toResourceProperties LifecycleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Bucket.LifecycleConfiguration",
         supportsTags = Prelude.False, properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON LifecycleConfigurationProperty where
  toJSON LifecycleConfigurationProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" LifecycleConfigurationProperty where
  type PropertyType "Rules" LifecycleConfigurationProperty = [RuleProperty]
  set newValue LifecycleConfigurationProperty {..}
    = LifecycleConfigurationProperty {rules = newValue, ..}