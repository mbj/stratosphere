module Stratosphere.S3Express.DirectoryBucket.LifecycleConfigurationProperty (
        module Exports, LifecycleConfigurationProperty(..),
        mkLifecycleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Express.DirectoryBucket.RuleProperty as Exports
import Stratosphere.ResourceProperties
data LifecycleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-lifecycleconfiguration.html>
    LifecycleConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-lifecycleconfiguration.html#cfn-s3express-directorybucket-lifecycleconfiguration-rules>
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
        {awsType = "AWS::S3Express::DirectoryBucket.LifecycleConfiguration",
         supportsTags = Prelude.False, properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON LifecycleConfigurationProperty where
  toJSON LifecycleConfigurationProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" LifecycleConfigurationProperty where
  type PropertyType "Rules" LifecycleConfigurationProperty = [RuleProperty]
  set newValue LifecycleConfigurationProperty {..}
    = LifecycleConfigurationProperty {rules = newValue, ..}