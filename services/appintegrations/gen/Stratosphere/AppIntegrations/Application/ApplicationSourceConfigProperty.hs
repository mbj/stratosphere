module Stratosphere.AppIntegrations.Application.ApplicationSourceConfigProperty (
        module Exports, ApplicationSourceConfigProperty(..),
        mkApplicationSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.Application.ExternalUrlConfigProperty as Exports
import Stratosphere.ResourceProperties
data ApplicationSourceConfigProperty
  = ApplicationSourceConfigProperty {externalUrlConfig :: ExternalUrlConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationSourceConfigProperty ::
  ExternalUrlConfigProperty -> ApplicationSourceConfigProperty
mkApplicationSourceConfigProperty externalUrlConfig
  = ApplicationSourceConfigProperty
      {externalUrlConfig = externalUrlConfig}
instance ToResourceProperties ApplicationSourceConfigProperty where
  toResourceProperties ApplicationSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application.ApplicationSourceConfig",
         supportsTags = Prelude.False,
         properties = ["ExternalUrlConfig" JSON..= externalUrlConfig]}
instance JSON.ToJSON ApplicationSourceConfigProperty where
  toJSON ApplicationSourceConfigProperty {..}
    = JSON.object ["ExternalUrlConfig" JSON..= externalUrlConfig]
instance Property "ExternalUrlConfig" ApplicationSourceConfigProperty where
  type PropertyType "ExternalUrlConfig" ApplicationSourceConfigProperty = ExternalUrlConfigProperty
  set newValue ApplicationSourceConfigProperty {}
    = ApplicationSourceConfigProperty
        {externalUrlConfig = newValue, ..}