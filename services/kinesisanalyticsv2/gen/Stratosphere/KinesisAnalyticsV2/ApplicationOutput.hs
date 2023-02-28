module Stratosphere.KinesisAnalyticsV2.ApplicationOutput (
        module Exports, ApplicationOutput(..), mkApplicationOutput
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationOutput.OutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationOutput
  = ApplicationOutput {applicationName :: (Value Prelude.Text),
                       output :: OutputProperty}
mkApplicationOutput ::
  Value Prelude.Text -> OutputProperty -> ApplicationOutput
mkApplicationOutput applicationName output
  = ApplicationOutput
      {applicationName = applicationName, output = output}
instance ToResourceProperties ApplicationOutput where
  toResourceProperties ApplicationOutput {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationOutput",
         supportsTags = Prelude.False,
         properties = ["ApplicationName" JSON..= applicationName,
                       "Output" JSON..= output]}
instance JSON.ToJSON ApplicationOutput where
  toJSON ApplicationOutput {..}
    = JSON.object
        ["ApplicationName" JSON..= applicationName,
         "Output" JSON..= output]
instance Property "ApplicationName" ApplicationOutput where
  type PropertyType "ApplicationName" ApplicationOutput = Value Prelude.Text
  set newValue ApplicationOutput {..}
    = ApplicationOutput {applicationName = newValue, ..}
instance Property "Output" ApplicationOutput where
  type PropertyType "Output" ApplicationOutput = OutputProperty
  set newValue ApplicationOutput {..}
    = ApplicationOutput {output = newValue, ..}