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
  = ApplicationResourceLifecycleConfigProperty {serviceRole :: (Prelude.Maybe (Value Prelude.Text)),
                                                versionLifecycleConfig :: (Prelude.Maybe ApplicationVersionLifecycleConfigProperty)}
mkApplicationResourceLifecycleConfigProperty ::
  ApplicationResourceLifecycleConfigProperty
mkApplicationResourceLifecycleConfigProperty
  = ApplicationResourceLifecycleConfigProperty
      {serviceRole = Prelude.Nothing,
       versionLifecycleConfig = Prelude.Nothing}
instance ToResourceProperties ApplicationResourceLifecycleConfigProperty where
  toResourceProperties
    ApplicationResourceLifecycleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::Application.ApplicationResourceLifecycleConfig",
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