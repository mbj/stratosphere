module Stratosphere.ElasticBeanstalk.Application.ApplicationVersionLifecycleConfigProperty (
        module Exports, ApplicationVersionLifecycleConfigProperty(..),
        mkApplicationVersionLifecycleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.Application.MaxAgeRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.Application.MaxCountRuleProperty as Exports
import Stratosphere.ResourceProperties
data ApplicationVersionLifecycleConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html>
    ApplicationVersionLifecycleConfigProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxagerule>
                                               maxAgeRule :: (Prelude.Maybe MaxAgeRuleProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxcountrule>
                                               maxCountRule :: (Prelude.Maybe MaxCountRuleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationVersionLifecycleConfigProperty ::
  ApplicationVersionLifecycleConfigProperty
mkApplicationVersionLifecycleConfigProperty
  = ApplicationVersionLifecycleConfigProperty
      {haddock_workaround_ = (), maxAgeRule = Prelude.Nothing,
       maxCountRule = Prelude.Nothing}
instance ToResourceProperties ApplicationVersionLifecycleConfigProperty where
  toResourceProperties ApplicationVersionLifecycleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxAgeRule" Prelude.<$> maxAgeRule,
                            (JSON..=) "MaxCountRule" Prelude.<$> maxCountRule])}
instance JSON.ToJSON ApplicationVersionLifecycleConfigProperty where
  toJSON ApplicationVersionLifecycleConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxAgeRule" Prelude.<$> maxAgeRule,
               (JSON..=) "MaxCountRule" Prelude.<$> maxCountRule]))
instance Property "MaxAgeRule" ApplicationVersionLifecycleConfigProperty where
  type PropertyType "MaxAgeRule" ApplicationVersionLifecycleConfigProperty = MaxAgeRuleProperty
  set newValue ApplicationVersionLifecycleConfigProperty {..}
    = ApplicationVersionLifecycleConfigProperty
        {maxAgeRule = Prelude.pure newValue, ..}
instance Property "MaxCountRule" ApplicationVersionLifecycleConfigProperty where
  type PropertyType "MaxCountRule" ApplicationVersionLifecycleConfigProperty = MaxCountRuleProperty
  set newValue ApplicationVersionLifecycleConfigProperty {..}
    = ApplicationVersionLifecycleConfigProperty
        {maxCountRule = Prelude.pure newValue, ..}