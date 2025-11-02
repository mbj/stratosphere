module Stratosphere.ElasticBeanstalk.Application.ApplicationResourceLifecycleConfigProperty (
        module Exports, ApplicationResourceLifecycleConfigProperty(..),
        mkApplicationResourceLifecycleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.Application.ApplicationVersionLifecycleConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationResourceLifecycleConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html>
    ApplicationResourceLifecycleConfigProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-servicerole>
                                                serviceRole :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-versionlifecycleconfig>
                                                versionLifecycleConfig :: (Prelude.Maybe ApplicationVersionLifecycleConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationResourceLifecycleConfigProperty ::
  ApplicationResourceLifecycleConfigProperty
mkApplicationResourceLifecycleConfigProperty
  = ApplicationResourceLifecycleConfigProperty
      {haddock_workaround_ = (), serviceRole = Prelude.Nothing,
       versionLifecycleConfig = Prelude.Nothing}
instance ToResourceProperties ApplicationResourceLifecycleConfigProperty where
  toResourceProperties
    ApplicationResourceLifecycleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Application.ApplicationResourceLifecycleConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ServiceRole" Prelude.<$> serviceRole,
                            (JSON..=) "VersionLifecycleConfig"
                              Prelude.<$> versionLifecycleConfig])}
instance JSON.ToJSON ApplicationResourceLifecycleConfigProperty where
  toJSON ApplicationResourceLifecycleConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ServiceRole" Prelude.<$> serviceRole,
               (JSON..=) "VersionLifecycleConfig"
                 Prelude.<$> versionLifecycleConfig]))
instance Property "ServiceRole" ApplicationResourceLifecycleConfigProperty where
  type PropertyType "ServiceRole" ApplicationResourceLifecycleConfigProperty = Value Prelude.Text
  set newValue ApplicationResourceLifecycleConfigProperty {..}
    = ApplicationResourceLifecycleConfigProperty
        {serviceRole = Prelude.pure newValue, ..}
instance Property "VersionLifecycleConfig" ApplicationResourceLifecycleConfigProperty where
  type PropertyType "VersionLifecycleConfig" ApplicationResourceLifecycleConfigProperty = ApplicationVersionLifecycleConfigProperty
  set newValue ApplicationResourceLifecycleConfigProperty {..}
    = ApplicationResourceLifecycleConfigProperty
        {versionLifecycleConfig = Prelude.pure newValue, ..}