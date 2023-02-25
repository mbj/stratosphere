module Stratosphere.ElasticBeanstalk.ApplicationVersion (
        module Exports, ApplicationVersion(..), mkApplicationVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticBeanstalk.ApplicationVersion.SourceBundleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationVersion
  = ApplicationVersion {applicationName :: (Value Prelude.Text),
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        sourceBundle :: SourceBundleProperty}
mkApplicationVersion ::
  Value Prelude.Text -> SourceBundleProperty -> ApplicationVersion
mkApplicationVersion applicationName sourceBundle
  = ApplicationVersion
      {applicationName = applicationName, sourceBundle = sourceBundle,
       description = Prelude.Nothing}
instance ToResourceProperties ApplicationVersion where
  toResourceProperties ApplicationVersion {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::ApplicationVersion",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationName" JSON..= applicationName,
                            "SourceBundle" JSON..= sourceBundle]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON ApplicationVersion where
  toJSON ApplicationVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationName" JSON..= applicationName,
               "SourceBundle" JSON..= sourceBundle]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "ApplicationName" ApplicationVersion where
  type PropertyType "ApplicationName" ApplicationVersion = Value Prelude.Text
  set newValue ApplicationVersion {..}
    = ApplicationVersion {applicationName = newValue, ..}
instance Property "Description" ApplicationVersion where
  type PropertyType "Description" ApplicationVersion = Value Prelude.Text
  set newValue ApplicationVersion {..}
    = ApplicationVersion {description = Prelude.pure newValue, ..}
instance Property "SourceBundle" ApplicationVersion where
  type PropertyType "SourceBundle" ApplicationVersion = SourceBundleProperty
  set newValue ApplicationVersion {..}
    = ApplicationVersion {sourceBundle = newValue, ..}